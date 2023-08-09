import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import glob
csvs = glob.glob('hbm_*_u.csv')
csvs.sort()
A0 = 0.05
xi = [0.03,0.1,0.3,0.5,0.8]
fig = plt.figure('HBM')
ax = fig.add_subplot(111)
for i, csv in enumerate(csvs):
    df = pd.read_csv(csv,delimiter=';')
    ax.plot(2*np.pi*df['Frequency'],np.log10(df['H1-N101,u']/A0),label=r'$\xi_2=$%.2f' %xi[i])
ax.set_xticks(np.linspace(0.0,2.0,5))
ax.set_yticks(np.linspace(-1.0,2.0,7))
ax.set_xlim(0.,2.0)
ax.legend(shadow=True,loc=0).set_draggable(True)
ax.grid()
ax.set_xlabel(r'Frequency $\Omega$')
ax.set_ylabel(r'Transmissibility $T_A=\log\left(\frac{X_1}{A_0}\right)$')
plt.tight_layout()
plt.show()