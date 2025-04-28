import os, sys
import re
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import mplcursors

txt = sys.argv[1]

ifile = open(txt,'r')
freq = []
while 1:
    line = ifile.readline()
    if not line: break
    if re.search('RVALTAB',line):
        for i in range(3):
            line = ifile.readline()
        while 1:
            line = ifile.readline()
            if not line: break
            liste = line.split()
            if len(liste) != 4: break
            print (liste)
            freq.append(liste[1])
n = len(freq)
fig = plt.figure('Spectrum')
ax = fig.add_subplot(111)
freq = np.array(freq).astype(float)
freq_unique = np.unique(freq)
m, = freq_unique.shape
#ax.plot(np.arange(1,n+1),freq,'o')
sc=ax.scatter(np.arange(1,m+1),freq_unique)
ax.set_xlabel(r'Mode number')
ax.set_ylabel(r'Frequency $f$ [Hz]')
ax.grid()
mplcursors.cursor(sc,multiple=True)
plt.tight_layout()
plt.show()
  