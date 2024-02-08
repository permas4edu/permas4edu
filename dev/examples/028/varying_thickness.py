import os, sys
import numpy as np
import pandas as pd

def h(radius):
    """ linearily varying thickness """
    h_0 = 0.01
    eta = -0.3
    return h_0*(1+eta*radius)

#
# csv files achieved by Table export in VisPER
#
df1 = pd.read_csv('circular_plate_nodes.csv',delimiter=';')
df2 = pd.read_csv('circular_plate_elements.csv',delimiter=';')
nid = df1[df1.keys()[0]]
r = df1[df1.keys()[1]]
p,q = df2.shape
ofile = open('thickness.dat','w')
ofile.write('$ENTER COMPONENT NAME = DFLT_COMP\n')
ofile.write('    $SYSTEM NAME = S_STEP_1\n')
ofile.write('        $GEODAT SHELL CONT = THICK\n')
eid = df2['Label']
N1  = df2[' "N1"']
N2  = df2[' "N2"']
N3  = df2[' "N3"']
N4  = df2[' "N4"']
for i in range(p):
    ind1 = np.where(N1[i]== nid)[0][0]
    ind2 = np.where(N2[i]== nid)[0][0]
    ind3 = np.where(N3[i]== nid)[0][0]
    ind4 = np.where(N4[i]== nid)[0][0]
    ofile.write('GD_%s %.8e %.8e %.8e %.8e\n'%(eid[i],h(r[ind1]),h(r[ind2]),h(r[ind3]),h(r[ind4]) ))
ofile.write('        $ELPROP\n')

for i in range(p):
    ofile.write('%9s GEODAT = GD_%s MATERIAL = MAT_01\n'%(eid[i], eid[i]))
ofile.write('    $END SYSTEM\n')
ofile.write('$EXIT COMPONENT\n')
ofile.write('$FIN\n')
print ('Thickness information is available')
ofile.close()    

