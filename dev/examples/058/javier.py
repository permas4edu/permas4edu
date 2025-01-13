import os, sys, re
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

def parser(file):
    ifile = open(file,'r')
    f = []
    while 1:
        line = ifile.readline()
        if not line: break
        if re.search('RVALTAB.DISP',line):
           for i in range(3):
               line = ifile.readline()
        while 1:
            line = ifile.readline()
            tmp = line.split()
            if len(tmp) != 4: break
            f.append(tmp[1])
    return f
        

freq = parser('natural_frequencies.txt')   
freq = np.array(freq).astype(float)
n = freq.shape[0]
fig = plt.figure('Natural frequencies')
ax = fig.add_subplot(111)
ax.set_title('Nominal system')
ax.plot(np.arange(1,11),freq[:10],'-o',c='k',alpha=0.3)
ax.scatter(np.array([3,4]),freq[2:4],c='b',label='Bending mode')
ax.scatter(np.array([7]),freq[6],c='r',label='Torsional mode')
ax.set_xticks(np.linspace(1,10,10))
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(1,10)
ax.set_xlabel('$k$')
ax.set_ylabel(r'$f_k$ [Hz]')
ax.grid()
plt.show()


