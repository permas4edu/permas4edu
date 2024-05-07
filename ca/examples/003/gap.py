import os, sys
import numpy as np
import pandas as pd
csv = sys.argv[1]
df = pd.read_csv(csv,delimiter=';')
nids=df[df.keys()[0]]
y=df[df.keys()[2]]
R=1.0
print (nids,R+y)
ofile = open('hertzian_gap.dat','w')
ofile.write('      $CONTACT LOAD  LPAT =       1000  GAPWIDTH = ABS\n')
for i, nid in enumerate(nids):
    ofile.write('        C1 %8i : %.8e\n' %(nid, R+y[i]))
ofile.close()
