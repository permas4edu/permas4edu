import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Unbalance response')
ax = fig.add_subplot(111)
ax.plot(df['Frequency'],df['N3,u'],label=r'Disk 2: $u$')
ax.plot(df['Frequency'],df['N3,w'],label=r'Disk 2: $w$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_ylabel('Amplitude [m]')
ax.set_xlabel('Frequency $f$ [Hz]')
ax.set_xlim(df['Frequency'].values[0],df['Frequency'].values[-1])
plt.tight_layout()
plt.show()
