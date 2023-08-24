import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.use('QtAgg')
import matplotlib.pyplot as plt

df = pd.read_csv('hbm_resp.csv',delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
for i in range(6):
    ind = df.keys()[6+i+1]
    print (ind)
    ax.plot(df['Frequency'],df[ind],label=r'$x_%i$'%(i+1))
ax.grid()
ax.set_xlabel('Frequency $f$ [Hz]')
ax.set_ylabel('Amplitude')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.savefig('sha_wei.png',dpi=100)
#plt.show()
