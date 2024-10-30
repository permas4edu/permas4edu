#!/usr/bin/env pyINTES
import matplotlib as mpl
mpl.use("Agg")
import os, sys, re
import gzip
from scipy.sparse import coo_matrix
from scipy.io import mmwrite, savemat
import matplotlib.pylab as plt
import matplotlib.cm as cm
import numpy as np
from scipy.linalg import eig
from numpy.linalg import cond
import matplotlib.colors as colors
import matplotlib.cm as cmx
coolwarm = cm =  plt.get_cmap('coolwarm')
purd = cm =  plt.get_cmap('PuRd')
cNorm  = colors.Normalize(vmin=0, vmax=100.)
scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=coolwarm)
scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=purd)
import xlsxwriter

import matplotlib as mpl
label_size = 3
mpl.rcParams['xtick.labelsize'] = label_size
mpl.rcParams['ytick.labelsize'] = label_size

import warnings
warnings.simplefilter("ignore")
inp = sys.argv[1]
res = sys.argv[2]
#
if inp.endswith('gz'):
    ifile = gzip.open(inp,'r')
else:
    ifile = open(inp,'r')
print
print ('Processing %s' %inp)
print


def parser(res):
    freq_ema = []
    freq_sim = []
    rfile = open(res,'r')
    while 1:
        line = rfile.readline()
        if not line: break
        if re.search('M1R.DISP',line):
            for i in range(3):
                line = rfile.readline()
            while 1:
                line = rfile.readline()
                if not line: break
                liste = line.split()
                if len(liste) != 3: break
                freq_ema.append(liste[1])
        if re.search('RVALTAB.DISP',line):
            for i in range(3):
                line = rfile.readline()
            while 1:
                line = rfile.readline()
                if not line: break
                liste = line.split()
                if len(liste) != 4: break
                freq_sim.append(liste[1])

    rfile.close()
    return freq_ema, freq_sim

flag  = False
while 1:

    line = ifile.readline()
    if not line : break

    if re.search('\$DATAOBJECT BOOK',line):
#       print line
        flag = True
        liste = line.split()
        matname = liste[4]
#       print matname
        col = []
        row = []
        val = []
        while 1:
            line = ifile.readline()
            if not line: break
            if re.search('$EXIT COMPONENT',line): break
            if line.startswith('%!'):
#               print
#               print 'Ende Datenobjekt'
#               print
                break

            if re.search('ROWDIM',line):
                liste = line.split()
                rowdim = int(liste[3])
                coldim = int(liste[6])
#               print 'ROWDIM, COLDIM = %i, %i' %(rowdim, coldim)

            if re.search('MATTYPE',line):
                liste = line.split()
                mattype = liste[6]
                if mattype == 'PS':
                    print ('Packed symmetric')
                elif mattype =='R':
                    print ('Rectangular')
                elif mattype =='D':
                    print ('Diagonal')
                else:
                    print ('Unknown matrix format')

            if re.search('BLOCKFORM',line):
                if re.search('FORMAT = R',line):
                    typ = 'R'
                elif re.search('FORMAT = PS',line):
                    typ = 'PS'

            liste = line.split()
            if flag :
                if liste[0].isdigit():

                    row.append(int(liste[0])-1)
                    col.append(int(liste[2])-1)
                    val.append(float(liste[4].replace('D','E')))
                if len(val) > 0:
                    if line.startswith('!'): break
                    if not liste[0].isdigit(): 
#                        print ('Skip line',line)
                        pass
#
#       fill lower triangular
#
                    if mattype == 'PS':
                        if col[-1] != row[-1]:
                            col.append(int(liste[1])-1)
                            row.append(int(liste[0])-1)
                            val.append(float(liste[2].replace('D','E')))


        if matname =='MAC':
            MAC = coo_matrix((val,(row,col)),shape=(rowdim,coldim))
        else:
            print ('Unknown matrix name %s' %matname)

ifile.close()

try:
    mmwrite('MAC',MAC)
    savemat('MAC.mat',mdict={'MAC': MAC},format='5')
except:
    pass

freq_ema, freq_sim = parser(res)
n_ema = len(freq_ema)
n_sim = len(freq_sim)
if n_sim == 0:
    freq_sim = freq_ema # automac
    n_sim = len(freq_ema)
print ('Number of eigenfrequencies', n_ema, n_sim)
fig2 = plt.figure('Modal assurance criteria II')
ax1  = fig2.add_subplot(111)
ax1.set_title('MAC matrix')
mesh1 = ax1.matshow(MAC.todense(),aspect='equal',origin='lower',cmap=cmx.get_cmap('jet'),vmin=0.0, vmax=1.0)
ax1.set_xticks(np.arange(0,n_ema,1))
ax1.set_yticks(np.arange(0,n_sim,1))
ax1.set_xticks(np.arange(-0.5,n_ema,1),minor=True)
ax1.set_yticks(np.arange(-0.5,n_sim,1),minor=True)
ax1.set_xticklabels(np.arange(1,n_ema+1,1))
ax1.set_yticklabels(np.arange(1,n_sim+1,1))
ax1.set_ylabel('Simulation')
ax1.set_xlabel('Experiment')
ax1.grid(which='minor',color='w', linestyle='-',linewidth=1)

plt.colorbar(mesh1,ax=ax1)
plt.tight_layout()
plt.savefig('mac',dpi=200)

#freq_ema, freq_sim = parser(res) # extract eigenfrequencies from modal test and simulation

workbook =   xlsxwriter.Workbook(os.path.join(os.path.dirname(inp),'mac.xlsx'))
worksheet = workbook.add_worksheet('MAC.DISP')
workbook.set_properties({
'title':    'Modal Assurance Criterion',
'subject':  'PERMAS',
'author':   '',
'manager':  '',
'company':  '',
'category': 'Example spreadsheet',
'keywords': 'PERMAS, Experimental Modal Analysis',
'comments': 'Created with Python and XlsxWriter',
'status':   'New',
})
# Add a format. Light red fill with dark red text.
format1 = workbook.add_format({'bg_color': '#FFC7CE',
                               'font_color': '#9C0006'})
# Add a format. Green fill with dark green text.
format2 = workbook.add_format({'bg_color': '#C6EFCE',
                               'font_color': '#006100'})
# Add a format. Turquoise fill with dark blue text.
format3 = workbook.add_format({'bg_color': '#CCFFFF',
                               'font_color': '#0000FF'})
p,q = MAC.shape
worksheet.write_column(1,0,freq_sim)
worksheet.write_row(0,1,freq_ema)

for i in range(q):
    worksheet.write_column(1,i+1,MAC.todense()[:,i])
worksheet.conditional_format(1,1,p+1,q+1,{'type': 'cell',
                                          'criteria': '>=',
                                          'value':0.8,
                                          'format':format1})
worksheet.insert_image('D30','mac.png' , {'x_scale': 1.0, 'y_scale': 1.0})
worksheet.set_column('A:Q', 12)
worksheet.freeze_panes(1,1)
workbook.close()
