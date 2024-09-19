import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
fig = plt.figure('Tip displacements')
ax = fig.add_subplot(111)
df = pd.read_csv('azzara_01_resp.csv',delimiter=';')
ax.plot(df['N4266,u'],df['Time'],'-o',label=r'$u$')
ax.plot(df['N4266,v'],df['Time'],'-o',label=r'$v$')
ax.plot(df['N4266,w'],df['Time'],'-o',label=r'$w$')
ax.grid()
ax.legend(shadow=True)
mplcursors.cursor(ax,multiple=True)
plt.show()

