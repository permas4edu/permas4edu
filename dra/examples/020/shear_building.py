import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

df1 = pd.read_csv('u1_u.csv',delimiter=';')
df2 = pd.read_csv('u1p_up.csv',delimiter=';')
df3 = pd.read_csv('u1pp_upp.csv',delimiter=';')
df4 = pd.read_csv('direct_u1_u.csv',delimiter=';')
df5 = pd.read_csv('direct_u1p_up.csv',delimiter=';')
df6 = pd.read_csv('direct_u1pp_upp.csv',delimiter=';')
fig,axs = plt.subplots(3,1,figsize=(5,10),sharex=True)
axs[0].plot(df1['Time'],df1['N101,v'],label=r'$u_1$')
axs[0].plot(df4['Time'][::5],df4['N101,v'][::5],'.',label=r'direct $u_1$')
axs[1].plot(df2['Time'],df2['N101,v'],label=r'$\dot{u}_1$')
axs[1].plot(df5['Time'][::5],df5['N101,v'][::5],'.',label=r'direct $\dot{u}_1$')
axs[2].plot(df3['Time'],df3['N101,v'],label=r'$\ddot{u}_1$')
axs[2].plot(df6['Time'][::5],df6['N101,v'][::5],'.',label=r'direct $\ddot{u}_1$')
axs[0].grid()
axs[1].grid()
axs[2].grid()
axs[0].legend(shadow=True).set_draggable(True)
axs[1].legend(shadow=True).set_draggable(True)
axs[2].legend(shadow=True).set_draggable(True)
axs[2].set_yticks(np.linspace(-0.05,0.02,8))
axs[2].set_xlabel(r'Time $t$ [s]')
axs[0].ticklabel_format(axis='y', style='sci', scilimits=(0,0))
axs[1].ticklabel_format(axis='y', style='sci', scilimits=(0,0))
axs[0].set_xlim(0.,1.)
plt.tight_layout()
plt.show()
