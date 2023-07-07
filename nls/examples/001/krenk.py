import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory'] = os.getcwd()
#mpl.use('Agg')
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
#
# https://github.com/KratosMultiphysics/Examples/tree/master/structural_mechanics/validation/beam_shallow_angled_structure
#

csv1 = sys.argv[1]
csv2 = sys.argv[2]
df1 = pd.read_csv(csv1,delimiter=';')
df2 = pd.read_csv(csv2,delimiter=';')
L = 10.
E = 2.1E11
I = 3.34E-5
h = 0.24

fig = plt.figure('Arclength method')
ax = fig.add_subplot(111)
ax.plot(-df1['N11,v']/h,-df2['N11,Fv']*L**2/(E*I),lw=2,label='PERMAS')
ax.grid()
ax.set_xlabel(r'Central deflection $\frac{v}{h}$')
ax.set_ylabel(r'Load $\frac{P\,L^2}{E\,I}$')
ax.legend(shadow=True).set_draggable(True)
plt.tight_layout()
plt.savefig('force_deflection')
plt.show()
