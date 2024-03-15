import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
df1 = pd.read_csv('t_A_t_a.csv',delimiter=';')
df2 = pd.read_csv('t_B_t_b.csv',delimiter=';')
fig=plt.figure('Temperature evolution')
ax = fig.add_subplot(111)
ax.plot(df1['Time'],df1['N16,T'],label=r'Point $A$')
ax.plot(df2['Time'],df2['N1213,T'],label=r'Point $B$')
ax.legend(shadow=True).set_draggable(True)
ax.set_xlabel(r'Time $t$ [s]')
ax.set_ylabel('Temperature $T$ [$^\circ$C]')
ax.grid()
plt.tight_layout()
plt.show()