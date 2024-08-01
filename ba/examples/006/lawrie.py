import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')

a=88.9

def w(r):
    E = 7.E4
    h = 0.48
    nu=0.3
    D = E*h**3/(12*(1-nu**2)) 
    F = 1.0
    if r > 0:
        return F*r**2*np.log(r/a)/(8*np.pi*D)+F*(a**2-r**2)/(16*np.pi*D)
    else:
        return F*a**2/(16*np.pi*D)

vfunc = np.vectorize(w)

r = np.linspace(0,a,100)
fig = plt.figure('Deflected shape')
ax = fig.add_subplot(111)
ax.plot(r,-vfunc(r),label=r'$w(r)$')
ax.plot(df['Coor_X'],df['LPAT_1_w'],'o',label='PERMAS')
ax.grid()
ax.set_xlabel(r'$r$ [mm]')
ax.set_ylabel(r'$w(r)$ [mm]')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()