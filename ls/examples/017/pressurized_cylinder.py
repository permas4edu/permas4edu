import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()

import matplotlib.pyplot as plt
fig=plt.figure('Pressurized Cylinder')
ax1=fig.add_subplot(211)
ax2=fig.add_subplot(212)
ax1.set_title(r'$\nu=0.25$')
ax2.set_title(r'$\nu=0.499$')
ax1.set_xlabel(r'Radius $r$')
ax1.set_ylabel(r'Radial displacement $u(r)$')
ax1.grid()
ax2.set_xlabel(r'Radius $r$')
ax2.set_ylabel(r'Radial displacement $u(r)$')
ax2.grid()
r1=3.
r2=6.
p1=200.
p2=-100.
E=1000.
nu=0.25
#nu=0.499
df1 = pd.read_csv('step_1_ur.csv',delimiter=';')
df2 = pd.read_csv('step_2_ur.csv',delimiter=';')

A=r1**2*r2**2*(p2-p1)/(r2**2-r1**2)
B=(r1**2*p1-r2**2*p2)/(r2**2-r1**2)

def u(r,nu):
    return (1+nu)*r*((1-2*nu)*B-A/r**2)/E

r=np.linspace(r1,r2,100)
ax1.plot(r,u(r,0.25),label='exact')
ax1.plot(df1['Coor_X'],df1['LPAT_1_u'],'o',label='PERMAS')
ax1.legend(shadow=True).set_draggable(True)
ax2.plot(r,u(r,0.499),label='exact')
ax2.plot(df2['Coor_X'],df2['LPAT_1_u'],'o',label='PERMAS')
ax2.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
