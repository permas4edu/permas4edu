import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')

fig = plt.figure('Veering')
ax = fig.add_subplot(111)
ax.minorticks_on()
k=90958274160.43951
ax.plot(df1['DV_1']/k,df2['L_1'],label=r'$\lambda_1$')
ax.plot(df1['DV_1']/k,df2['L_2'],label=r'$\lambda_2$')
ax.plot(df1['DV_1']/k,df2['L_3'],label=r'$\lambda_3$')
ax.plot(df1['DV_1']/k,df2['L_4'],label=r'$\lambda_4$')
ax.plot(df1['DV_1']/k,df2['L_5'],label=r'$\lambda_5$')
ax.set_xlabel(r'Parameter $\varepsilon$')
ax.set_ylabel(r'$\lambda_i=\omega_i^2$')
ax.set_xlim(0.,0.5)
ax.legend(shadow=True).set_draggable(True)
ax.set_yticks(1.E11*np.linspace(0.5,3,6))
ax.grid()
plt.tight_layout()
plt.show()