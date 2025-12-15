#!/usr/bin/env pyINTES
import numpy as np
import matplotlib as mpl
mpl.use('Agg') # without graphics card
import matplotlib.pyplot as plt
from scipy.interpolate import splrep, splev, sproot
from scipy.optimize import bisect
import os, sys
import xlrd
import mplcursors
from pylab import axvline
import xlsxwriter
import getpass
import matplotlib as mpl
import warnings

warnings.simplefilter("ignore")
#
# Intes GmbH 2017
# Computation of critical speeds
# Campbell diagram
# pyINTES critical.py *.csv  1
#
rsfrq = sys.argv[1] 
harm  = sys.argv[2]
loop  = sys.argv[3]

print ('Processing %s' %rsfrq)

if rsfrq.endswith('csv'):
    try:
        X = np.loadtxt(rsfrq,skiprows=1,delimiter=',') # *.rsfrq
    except:
        X = np.loadtxt(rsfrq,skiprows=1,delimiter=';') # *.rsfrq
elif rsfrq.endswith('xls'):
    wb = xlrd.open_workbook(rsfrq)
    s = wb.sheet_by_index(0)
    print (dir(s))
    print ('Sheet:',s.name)
    values = []
    for row in range(s.nrows-1):
        for col in range(s.ncols):
            values.append(s.cell(row+1,col).value)
    X = np.reshape(values,(s.nrows-1,s.ncols))        
           
else:
    print ('Unknown Input format')
    sys.exit()
    
m,n = X.shape
mpl.rcParams['savefig.directory'] = os.getcwd()

workbook =   xlsxwriter.Workbook('critical_speeds_%03d.xlsx'%int(loop))
worksheet = workbook.add_worksheet('Critical speeds')
workbook.set_properties({
'title':    'Critiical Speeds',
'subject':  'PERMAS',
'author':    getpass.getuser(),
'category': 'Example spreadsheet',
'keywords': 'PERMAS, Rotordynamics, Campbell Diagram',
'comments': 'Created with Python and XlsxWriter',
'status':   'New',
})
worksheet.freeze_panes(1,1)
worksheet.set_column('A:A', 15)#10
worksheet.set_column('B:B', 15)
worksheet.set_column('C:C', 15)
worksheet.set_column('D:D', 15)
worksheet.write(0,0,'Mode')
worksheet.write(0,2,'Critical Speeds')
worksheet.write(0,4,'Engine Order')
worksheet.write(1,4,harm)
worksheet.write(1,1,'[Hz]')
worksheet.write(1,2,'[rad/s]')
worksheet.write(1,3,'[rpm]')
worksheet.set_column('A:A', 15)
format1 = workbook.add_format({'bg_color': '#FFC7CE',
                               'font_color': '#9C0006'})
# Add a format. Green fill with dark green text.
format2 = workbook.add_format({'bg_color': '#C6EFCE',
                               'font_color': '#006100'})


fig = plt.figure('Critical Speeds',figsize=(20,10))
ax1  = fig.add_subplot(111)

def f(x):
    z = splev(x,tck1)
    return z

x = X[:,0] # PERMAS supporting points (rotational speed)

x_fine = np.linspace(x[0],x[-1],2*m-1) # f Raster

print ('Results by bisection')
#skip_curve = [9,13]
skip_curve = []
xlabels = []
ic = 0
filename = 'critical_speeds_%03d.csv'%(int(loop))
ofile = open(filename,'w')
ofile.write('"Curve";"Critical speed"\n')

for i in range(n-1):                 # Loop over all eigencurves
    
#   ax1.plot(X[:,0],X[:,i+1],'-',label=str(i+1))
    y = X[:,i+1]                     # i-th eigenpath
    
    tck  = splrep(x,y,k=3)           # cubic spline
    y_sp = splev(x_fine,tck)
    
    tck1 = splrep(x_fine,y_sp-float(harm)*x_fine,k=3)

#   roots = sproot(tck1,1)           # Number of intersections  

#    for root in roots:
#        print 'Critical speed for eigencurve %i %f' %(i+1,root)

    try:
        x0 = bisect(f,x[0],x[-1])
        print (x0,type(x0))
        xlabels.append(60*np.round(x0,1))
#        ofile.write('%i %.e\n' %(i+1,x0=)
        if not i+1 in skip_curve:
            ofile.write('%i; %.6e\n' %(i+1,x0))
            print ('Critical speed for eigencurve %i %f [Hz] %f [rad/s] %f [rpm]' %(i+1,x0,2*np.pi*x0,60*x0))
            ic += 1
            worksheet.write(ic+1,0,i+1)
            worksheet.write(ic+1,1,x0)
            worksheet.write(ic+1,2,2*np.pi*x0)
            worksheet.write(ic+1,3,60*x0)
            
            ax1.plot(X[:,0],X[:,i+1],'-',lw=2,label=str(i+1))
            ax1.scatter(x0,x0*float(harm))
            ax1.annotate(xlabels[-1],xy=(x0,x0),xycoords='data')
            axvline(x=x0,color='k',ls='dashed',alpha=0.3)
#       ax1.annotate(str(np.round(x0,1)),xy=(x0,splev(x0,tck)),xycoords='data')
    except:
        pass
        print ('No solution in the interval for eigencurve %i' %(i+1))
ofile.close()        
ax1.plot(x_fine,float(harm)*x_fine,'-',lw=2,c='k',alpha=0.3,label='%s Harmonic' %harm)
ax1.set_xlabel(r'Spin velocity $f$ [Hz]')
ax1.set_ylabel(r'Frequency $f$ [Hz]')
ax1.grid('on')
ax1.legend(loc=0)
ax1.set_xlim(x[0],x[-1])

ymin,ymax = ax1.get_ylim()
ax1.set_ylim(0.0,ymax)
#ax1.set_ylim(0.0,800)
#ax1.set_ylim(0.0,160)
#ax1.set_xticks(xlabels)
#ax1.set_xticklabels(xlabels, rotation=90)

mplcursors.cursor(ax1,multiple=True)

# Shrink current axis by 10%
box = ax1.get_position()
#ax1.set_position([box.x0, box.y0, box.width * 0.9, box.height])
ax1.set_position([box.x0, box.y0, box.width * 1.0, box.height])

# Put a legend to the right of the current axis
ax1.legend(loc='center left', bbox_to_anchor=(1, 0.9)).set_draggable(True)

ax2 = ax1.twiny()
ax2.set_xlabel('Spin velocity [rpm]')
ax2.set_xlim(60*x[0],60*x[-1])

plt.subplots_adjust(left=0.12, bottom=0.11, right=0.84, top=0.9, wspace=0, hspace=0)
plt.tight_layout()
plt.savefig('campbell_%03d.png'%(int(loop)),dpi=80)
worksheet.insert_image(2,5,'campbell_%03d.png'%(int(loop)),{'x_scale': 0.5, 'y_scale': 0.5})
workbook.close()
plt.show() # interactive mode (i.e. with graphics card)
