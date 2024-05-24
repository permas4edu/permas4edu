import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt

csv = sys.argv[1]

df = pd.read_csv(csv,delimiter=';')

fig = plt.figure('Campbell diagram')
ax = fig.add_subplot(111)
ax.plot(60*df[df.keys()[0]],df[df.keys()[1]],label='BW-1')
ax.plot(60*df[df.keys()[0]],df[df.keys()[3]],label='FW-1')
ax.plot(60*df[df.keys()[0]],df[df.keys()[5]],label='BW-2')
ax.plot(60*df[df.keys()[0]],df[df.keys()[7]],label='FW-2')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel('Rotor spin speed [rpm]')
ax.set_ylabel('Damped natural frequencies [Hz]')
ax.set_xlim(0.,7500.)
ax.set_xticks(np.linspace(0.0,7000.,8))
ax.set_yticks(np.linspace(0.0,120.,7))
ax.grid()
plt.tight_layout()
plt.show()