import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

df = pd.read_csv('sampling_srhis.csv',delimiter=';')

fig, axs = plt.subplots(2,1)
axs[0].plot(df['DV_1'],df['F_3'],label=r'$f_3$')
axs[0].plot(df['DV_1'],df['F_4'],label=r'$f_4$')
axs[1].plot(df['DV_1'],df['F_7'],label=r'$f_7$')
axs[0].grid()
axs[1].grid()
axs[0].legend(shadow=True).set_draggable(True)
axs[1].legend(shadow=True).set_draggable(True)
axs[0].set_ylabel('Natural frequencies')
axs[1].set_ylabel('Natural frequencies')
axs[0].set_xlim(0.,0.1)
axs[0].set_ylim(350.,375.)
axs[0].set_yticks(np.linspace(355.,370.,4))
axs[1].set_yticks(np.linspace(1000.,1400.,5))
plt.tight_layout()
plt.show()
