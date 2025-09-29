import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(df['Frequency'],df['H1-N102,u'],label='$x_2$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.,8.)
ax.set_xlabel('Frequency $f$ [Hz]')
plt.tight_layout()
plt.show()
