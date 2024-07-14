import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt

fig = plt.figure('Response')
ax=fig.add_subplot(111)

csv = sys.argv[1]

def u1(t):
    return np.cos(t)/6+0.5*np.cos(np.sqrt(3)*t)+np.cos(2*t)/3
def u2(t):
    return np.cos(t)/3-np.cos(2*t)/3
def u3(t):
    return np.cos(t)/6-0.5*np.cos(np.sqrt(3)*t)+np.cos(2*t)/3

           

df = pd.read_csv(csv,delimiter=';')
ax.plot(df['Time'],df['N101,u'],label=r'$u_1$')
ax.plot(df['Time'],df['N102,u'],label=r'$u_2$')
ax.plot(df['Time'],df['N103,u'],label=r'$u_3$')
ax.plot(df['Time'][::10],u1(df['Time'][::10]),'o',label=r'True $u_1$')
ax.plot(df['Time'][::10],u2(df['Time'][::10]),'o',label=r'True $u_2$')
ax.plot(df['Time'][::10],u3(df['Time'][::10]),'o',label=r'True $u_3$')
ax.grid()
ax.set_xlim(0.,10.)
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel('Time $t$ [s]')
ax.set_ylabel('Displacements')
plt.tight_layout()
plt.show()