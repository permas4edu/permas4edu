import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
fig = plt.figure('Transient response')
ax = fig.add_subplot(111)
df = pd.read_csv(csv,delimiter=';')
ax.plot(df['Time'],1.E-3*df['N197,w'],label='Sensor 1')
ax.plot(df['Time'],1.E-3*df['N229,w'],label='Sensor 2')
ax.plot(df['Time'],1.E-3*df['N276,w'],label='Sensor 3')
ax.set_xlabel('Time $t$ [s]')
ax.set_ylabel('Acceleration $a$ [m/s$^2$')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlim(0.,1.)
ax.grid()
plt.tight_layout()
plt.show()
