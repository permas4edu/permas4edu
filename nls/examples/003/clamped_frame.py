import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
fig = plt.figure('Tip displacements')
ax = fig.add_subplot(111)
df = pd.read_csv('clamped_frame_resp.csv',delimiter=';')
ax.plot(1E3*df['N1411,u'],df['Time'],'-o',label=r'$u$')
ax.plot(1E3*df['N1411,v'],df['Time'],'-o',label=r'$v$')
ax.plot(1E3*df['N1411,w'],df['Time'],'-o',label=r'$w$')
ax.grid()
ax.set_xlabel('Displacement [mm]')
ax.legend(shadow=True)
mplcursors.cursor(ax,multiple=True)
plt.show()

