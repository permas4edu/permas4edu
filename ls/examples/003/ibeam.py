import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
from matplotlib.ticker import MultipleLocator
import matplotlib.ticker as tck
df = pd.read_csv('deflection_defl.csv',delimiter=';')
fig = plt.figure('I BEAM')
ax = fig.add_subplot(111)

ax.set_xlabel(r'$z$ [m]')
ax.set_ylabel(r'Deflection over the neutral fiber $u_y$ [m]')
ml = MultipleLocator(5)
#ax.yaxis.set_minor_locator(ml)
ax.yaxis.set_minor_locator(tck.AutoMinorLocator())
ax.xaxis.set_minor_locator(tck.AutoMinorLocator())

ax.plot(df['Coor_Z'],df['LPAT_1_v'])
ax.grid(which='both',alpha=0.2)
mplcursors.cursor(ax,multiple=True)
plt.tight_layout()
plt.show()
