import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
fig = plt.figure('DOE')
ax = fig.add_subplot(111)
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
ax.plot(df['DV_1'],df['L_1'], label=r'$\lambda_1$')
ax.plot(df['DV_1'],df['L_2'], label=r'$\lambda_2$')
ax.plot(df['DV_1'],df['L_3'], label=r'$\lambda_3$')
ax.plot(df['DV_1'],df['L_4'], label=r'$\lambda_4$')
ax.plot(df['DV_1'],df['L_5'], label=r'$\lambda_5$')
ax.plot(df['DV_1'],df['L_6'], label=r'$\lambda_6$')
ax.plot(df['DV_1'],df['L_7'], label=r'$\lambda_7$')
ax.plot(df['DV_1'],df['L_8'], label=r'$\lambda_8$')
ax.legend(shadow=True).set_draggable(True)
ax.set_xticks(np.linspace(0.2,1.6,8))
ax.set_yticks(np.linspace(0.,8.,5))
ax.set_xlim(0.1,1.6)
ax.set_ylim(0.,8.)
ax.set_xlabel(r'$\mu$')
ax.set_ylabel(r'Eigenvalues $\lambda_i = \omega_i^2 = (2\,\pi\,f_i)^2$')
ax.grid()
plt.tight_layout()
plt.show()

