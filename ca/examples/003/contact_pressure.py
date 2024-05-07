import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
R = 1.0
p = 0.5
E = 200.0
nu = 0.2
b = 2*np.sqrt(2*R**2*p*(1-nu**2)/(E*np.pi))
print (b)
#x = np.linspace(0.0,b,30)
x = np.linspace(0.0,1.0,200)

def func(x):
    if x <= b:
        return 4*R*p*np.sqrt(b**2-x**2)/(np.pi*b**2)
    else:
        return 0.0
vfunc = np.vectorize(func)

csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
fig = plt.figure('Contact pressure')
ax = fig.add_subplot(111)
ax.plot(np.abs(df1[df1.keys()[0]]), df1[df1.keys()[1]],'-o',label='Gap by value')
ax.plot(np.abs(df2[df2.keys()[0]]), df2[df2.keys()[1]],label='Gap by function')
ax.plot(x,vfunc(x),label='Analytical')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel('Coordinate $|x|$')
ax.set_ylabel('Contact pressure $p$')
ax.grid()
ax.set_xlim(0.,0.14)
mplcursors.cursor(ax)
plt.tight_layout()
plt.show()
