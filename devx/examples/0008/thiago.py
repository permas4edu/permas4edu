import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
import mplcursors

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell')
ax = fig.add_subplot(111)
ax.plot(60*df["Rot.Freq."],60*df[df.keys()[1]],label='BW-1')
ax.plot(60*df["Rot.Freq."],60*df[df.keys()[3]],label='FW-1')
ax.plot(60*df["Rot.Freq."],60*df[df.keys()[5]],label='BW-2')
ax.plot(60*df["Rot.Freq."],60*df[df.keys()[7]],label='FW-2')
ax.plot(60*df["Rot.Freq."],60*df[df.keys()[9]],label='BW-3')
ax.plot(60*df["Rot.Freq."],60*df[df.keys()[11]],label='FW-3')
ax.plot(60*df["Rot.Freq."],60*df[df.keys()[13]],label='BW-4')
ax.plot(60*df["Rot.Freq."],60*df["Rot.Freq."],'-',c='r',lw=2,label=r'$\omega_n=\Omega$')
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(0.0,3.E4,4))
ax.set_xlim(0.0,3.E4)
ax.set_yticks(np.linspace(0.0,3.E4,7))
ax.set_ylim(0.0,3.E4)
ax.grid()
plt.ticklabel_format(style='sci', axis='x', scilimits=(0,4))
plt.ticklabel_format(style='sci', axis='y', scilimits=(0,4))
ax.set_xlabel(r'$\Omega$ [rpm]')
ax.set_ylabel(r'$\omega_n$ [rpm]')
plt.tight_layout()
plt.show()
