import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell')
ax=fig.add_subplot(111)
for i in range(5):
    ax.plot(2*np.pi*df['Rot.Freq.'],2*np.pi*df[df.keys()[2*i+1]],label=r'Mode $i$=%i' %(i+1))
ax.grid()
ax.plot(2*np.pi*df['Rot.Freq.'],2*np.pi*df['Rot.Freq.'],'-.',c='k',alpha=0.4)
ax.set_xlabel('Inner rotor spin speed [rad/s]')
ax.set_ylabel('Whirl speed')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
