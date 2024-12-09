import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import mplcursors
df = pd.read_csv('displacement_u.csv',delimiter=';')
fig = plt.figure('Hardening spring')
ax = fig.add_subplot(111)
ax.plot(df['Time'],df['N101,u'],'-o',label=r'$u$')
sc=ax.scatter(df['Time'],df['N101,u'])
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.0,3.1)
ax.set_xticks(np.linspace(0.,3.,7))
ax.set_yticks(np.linspace(-10.,10.,5))
ax.set_xlabel(r'Time $t$')
ax.set_ylabel(r'$U(t)$')
ax.minorticks_on()
mplcursors.cursor(sc,hover=True)
plt.tight_layout()
plt.show()

