import numpy as np
import pandas as pd
df1 = pd.read_csv('abh_01_nodes.csv',delimiter=';')
df2 = pd.read_csv('abh_01_elem.csv',delimiter=';')
gamma = 2.0
h_0 = 0.002
eps=3.E-1
x_c=0.3
y_c=0.2
R_B=0.1
def h_ABH(x,y):
    return eps*(np.sqrt((x-x_c)**2+(y-y_c)**2))**gamma+h_0/2

x = df1[df1.keys()[1]]
y = df1[df1.keys()[2]]
nid = df1[df1.keys()[0]]
h = h_ABH(x,y)
eid = df2[df2.keys()[0]]
n1 = df2[df2.keys()[4]]
n2 = df2[df2.keys()[5]]
n3 = df2[df2.keys()[6]]
n4 = df2[df2.keys()[7]]
m,n = df2.shape
ofile = open('abh_01_system.dat','w')
ofile.write('$ENTER COMPONENT NAME = DFLT_COMP\n')
ofile.write('$SYSTEM NAME = S_STEP_1\n')
ofile.write('$GEODAT SHELL CONT = THICK\n')
for i in range(m): # loop over ABH elements
    ind1 = np.where(n1[i]==nid)[0][0]
    ind2 = np.where(n2[i]==nid)[0][0]
    ind3 = np.where(n3[i]==nid)[0][0]
    ind4 = np.where(n4[i]==nid)[0][0]
    ofile.write('    GD_%i %.6e %.6e %.6e %.6e\n' %(i+1,h[ind1],h[ind2],h[ind3],h[ind4]))
ofile.write('$ELPROP\n')
for i in range(m): # loop over ABH elements
    ofile.write(' %8i GEODAT = GD_%i MATERIAL = MAT_PLATE\n' %(eid[i],i+1))
ofile.write('$END SYSTEM\n')
ofile.write('$EXIT COMPONENT\n')
ofile.write('$FIN\n')
ofile.close()    
