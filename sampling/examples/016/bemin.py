import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import mplcursors
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt


def show_annotation(sel):
    sel.annotation.set_visible(False)
    fig.canvas.toolbar.set_message(f'{sel.annotation.xy[0]:.12f};{sel.annotation.xy[1]:.12f}')

fig = plt.figure('DOE')
ax1 = fig.add_subplot(111)
ax2 = ax1.twiny()  # instantiate a second axes that shares the same x-axis
color = 'tab:red'
tmp = 25+2*df['DV_1'].values
ax1.set_xlim(tmp[0],tmp[-1])
ax1.plot(tmp,df['SIG_V'],'-',alpha=0.4)
ax1.set_xticks(tmp)
ax1.grid()
line, = ax1.plot(25+2*df['DV_1'],df['SIG_V'],'o',label=r'$\sigma(D)$')
cursor = mplcursors.cursor(line)
cursor.connect("add", show_annotation)

ax2.tick_params(axis='x', labelcolor=color)
ax2.set_xticks(df['DV_1'].values)
ax2.set_xticklabels(df['DV_1'].values)
ax2.set_xlabel('Design variable')
ax1.legend(shadow=True).set_draggable(True)
ax1.set_xlabel(r'Hole Diameter $D$ [mm]')
ax1.set_ylabel(r'von Mises stress $\sigma_{\text{ max}}$ [N/mm$^2$]')
plt.tight_layout()
plt.show()
 
