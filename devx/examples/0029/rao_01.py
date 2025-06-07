import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
from matplotlib.ticker import AutoMinorLocator, MultipleLocator

csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell')
ax=fig.add_subplot(111)
for i in range(9):
    ax.plot(2*np.pi*df['Rot.Freq.'],2*np.pi*df[df.keys()[2*i+1]],label=r'Mode $i$=%i' %(i+1))
ax.grid()
ax.plot(2*np.pi*df['Rot.Freq.'],2*np.pi*df['Rot.Freq.'],'-.',c='k',alpha=0.4)
ax.set_xlabel('Inner rotor spin speed [rad/s]')
ax.set_ylabel('Whirl speed [rad/s]')
ax.set_yticks(np.linspace(0.,3000.,7))
ax.set_xticks(np.linspace(0.,2500.,6))
ax.set_ylim(0.,3000.)
ax.set_xlim(0.,2500.)
ax.xaxis.set_major_locator(MultipleLocator(500))
ax.xaxis.set_minor_locator(MultipleLocator(100))
ax.yaxis.set_minor_locator(MultipleLocator(100))
ax.legend(shadow=True,bbox_to_anchor=(1.1, 1.05)).set_draggable(True)
ax.xaxis.grid(True, which='minor')
ax.yaxis.grid(True, which='minor')
plt.tight_layout()
plt.show()
