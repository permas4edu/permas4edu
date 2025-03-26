import os, sys
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import pandas as pd
df = pd.read_csv('modal_resp.csv',delimiter=';')
fig = plt.figure('FRF')
ax = fig.add_subplot(111)
ax.semilogy(df['Frequency'],df['N422,u'],label=r'$w_R$')
ax.set_xlabel(r'Frequency $F$ [Hz]')
ax.set_ylabel(r'Normal displacement $w$')
ax.set_xticks(np.linspace(0.,300.,4))
ax.grid()
ax.set_xlim(0.,300.)
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.show()
