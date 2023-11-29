import os, sys
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd
import mplcursors
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig, ax = plt.subplots(subplot_kw={'projection': 'polar'})
r_ini = 82.75
lines=ax.plot(np.deg2rad(df['Coor_Y1']),df['LPAT_1_u'],'o',label='deformed')
ax.set_rmax(1.2)
ax.set_rticks([0.2,0.6,1.0])
ax.grid(True)
ax.legend(shadow=True).set_draggable(True)
ax.set_title(r'$\Delta r = r_0 \alpha \Delta T = 0.45678,\quad r_0=82.75,\,\alpha=2.4e-5,\,\Delta T=230$') 
cursor=mplcursors.cursor(lines, hover=True)
cursor.connect('add',
               lambda sel: sel.annotation.set_text(f'{sel.artist.get_label()} \n {np.rad2deg(sel.target[0]):.2f} \n $\Delta$r={sel.target[1]:.5f}'))
plt.show()
