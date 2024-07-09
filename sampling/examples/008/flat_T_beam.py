import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
fig=plt.figure('Internal energy')
ax = fig.add_subplot(111)
ax.plot(df['DV_1'],df['NONDIM_CMPL_1'],label=r'$W^\text{int}$')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel('Vertical patch location')
ax.set_ylabel('Normalized compliance')
plt.tight_layout()
plt.show()
