import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
df1 = pd.read_csv('frf_resp.csv',delimiter=';')
fig1 = plt.figure('FRF')
ax1 = fig1.add_subplot(111)
ax1.semilogy(df1['Frequency'],df1['N30,v'])
ax1.grid('on')
ax1.set_xlim(1.2E+03,12.0E+03)
ax1.set_xticks(np.linspace(2000.,12000,6))
ax1.set_xlabel(r'Frequency $f$ [Hz]')
ax1.set_ylabel(r'Receptance [$\frac{\mathrm{N}}{\mathrm{mm}}$]')
plt.tight_layout()
plt.show()
