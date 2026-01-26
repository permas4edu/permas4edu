import os
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
df = pd.read_csv('bearings_frf_b.csv',delimiter=';')
fig = plt.figure('Unbalance response')
ax = fig.add_subplot(111)
ax.semilogy(df['Frequency'],df['N7,u'],label=r'Node 7')
ax.semilogy(df['Frequency'],df['N9,u'],label=r'Node 9')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel('Rotor speed [Hz]')
ax.set_ylabel('Unbalance response [m]')
ax.set_title('Initial configuration')
ax.set_xlim(0.,5.0E+03)
ax.set_xticks(np.linspace(0.,5000.,11))
plt.tight_layout()
plt.show()