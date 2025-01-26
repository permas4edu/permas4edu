import os
import numpy as np
import pandas as pd
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
df1 = pd.read_csv('u_direct_uresp.csv',delimiter=';')
df2 = pd.read_csv('up_direct_vresp.csv',delimiter=';')
fig, axs = plt.subplots(3,1)
fig.suptitle('Duffing')
axs[0].plot(df1['Time'],df1['N101,u'])
axs[1].plot(df2['Time'],df2['N101,u'])
axs[2].plot(df1['N101,u'],df2['N101,u'])
axs[0].grid()
axs[0].set_xlabel(r'Time $t$ [s]')
axs[0].set_xlabel(r'Displacement $u(t)$')
axs[1].grid()
axs[1].set_xlabel(r'Time $t$ [s]')
axs[1].set_ylabel(r'Velocity $\dot{u}$')
axs[2].grid()
axs[2].set_xlabel('Displacement $u$')
axs[2].set_ylabel('Velocity $\dot{u}$')
plt.tight_layout()
plt.show()