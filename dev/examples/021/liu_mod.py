import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df1 = pd.read_csv('sampling_xdhis.csv',delimiter=';')
df2 = pd.read_csv('sampling_srhis.csv',delimiter=';')
fig = plt.figure('Veering')
ax = fig.add_subplot(111)
ax.plot(df1['DV_1'],2*np.pi*df2['F_1'],label=r'$\omega_1$')
ax.plot(df1['DV_1'],2*np.pi*df2['F_2'],label=r'$\omega_2$')
ax.plot(df1['DV_1'],2*np.pi*df2['F_3'],label=r'$\omega_3$')
ax.grid('on')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'$m_1$')
ax.set_ylabel(r'Frequency $\omega=2\pi\,f$')
ax.set_yticks(np.linspace(0.0,3.5,8))
ax.set_xticks(np.linspace(0.0,2.,9))
plt.show()
