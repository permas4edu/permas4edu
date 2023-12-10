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
ax.set_xlabel(r'$k_1$')
plt.show()
