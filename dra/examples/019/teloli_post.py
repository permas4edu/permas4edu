import numpy as np 
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df1 = pd.read_csv('magnitude_500Hz_amp.csv',delimiter=';')
df2 = pd.read_csv('phase_500Hz_phas.csv',delimiter=';')
df3 = pd.read_csv('ur_500Hz_ur.csv',delimiter=';')
df4 = pd.read_csv('ui_500Hz_ui.csv',delimiter=';')

fig, axs = plt.subplots(2,2)
axs[0,0].set_title('Amplitude')
axs[0,0].plot(df1['Coor_X'],df1['Freq_5.0000E+02_v'])
axs[1,0].set_title('Phase angle')
axs[1,0].set_yticks(np.linspace(-180.,180.,5))
axs[1,0].plot(df2['Coor_X'],np.rad2deg(df2['Freq_5.0000E+02_v']))
axs[0,1].set_title('Real part')
axs[0,1].set_ylim(-3.E-6,3.E-6)
axs[0,1].set_yticks(np.linspace(-3.E-6,3.E-6,7))
axs[0,1].plot(df3['Coor_X'],df3['Freq_5.0000E+02_v'])
axs[1,1].set_title('Imaginary part')
axs[1,1].plot(df4['Coor_X'],df4['Freq_5.0000E+02_v'])
axs[0,1].set_xlabel(r'$x$-coordinate [m]')
axs[1,1].set_xlabel(r'$x$-coordinate [m]')
for ax in axs.flat:
    ax.set_xlim(0.,0.7)
    ax.set_xticks(np.linspace(0.,0.7,8))
    ax.grid()

plt.tight_layout()
plt.show()
