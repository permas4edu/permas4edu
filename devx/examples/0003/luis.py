import os, sys
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig = plt.figure('Campbell')
ax = fig.add_subplot(111)
ax.plot(60*df['Rot.Freq.'],60*df['Mode 5'])
ax.plot(60*df['Rot.Freq.'],60*df['Mode 7'])
ax.plot(60*df['Rot.Freq.'],60*df['Mode 9'])
ax.plot(60*df['Rot.Freq.'],60*df['Mode 11'])
ax.plot(60*df['Rot.Freq.'],60*df['Mode 13'])
ax.plot(60*df['Rot.Freq.'],60*df['Rot.Freq.'],color='k',alpha=0.5)
ax.grid()
ax.set_xlabel('Rotor speed [rpm]')
ax.set_ylabel('Damped natural frequency speed [cpm]')
ax.set_yticks(np.linspace(0.,20000.,5))
ax.set_title('Campbell diagram')
plt.tight_layout()
plt.show()
