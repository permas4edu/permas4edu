import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df1 = pd.read_csv('hbm_01_resp.csv',delimiter=';')
df2 = pd.read_csv('hbm_02_resp.csv',delimiter=';')
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
ax.plot(2*np.pi*df1['Frequency'],df1['H1-N101,u'],label=r'$\alpha=0.8$')
ax.plot(2*np.pi*df2['Frequency'],df2['H1-N101,u'],label=r'$\alpha=1.2$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Frequency $f$ [Hz]')
ax.set_ylabel('Total amplitude')
ax.set_yticks(np.linspace(0.0,1.5,4))
ax.set_xlim(0.,2.0)
ax.set_xticks(np.array([0.0,0.5,1.17,1.4,1.63,2.]))
plt.tight_layout()
plt.show()