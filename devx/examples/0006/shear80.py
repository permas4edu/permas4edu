import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df = pd.read_csv('modes_mode.csv',delimiter=';')
fig = plt.figure('Normal modes')
ax = fig.add_subplot(111)
for i in range(4):
    ax.plot(df[df.keys()[i+1]],1+df['Coor_Y'],label='Mode %i' %(i+1))
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_ylabel('Storey')
ax.set_xlabel('Eigenvector component')
plt.show()