import os, sys
import pandas as pd
import numpy as np
df1 = pd.read_csv('sampling_rbhis.csv',delimiter=';')
df2 = pd.read_csv('sampling_srhis.csv',delimiter=';')
m,n = df1.shape
q = df1['BSV_1']
#print ('Load',q)
E = df1['BSV_2'] 
b = df1['BSV_3']
#h = df1['BSV_4']
h = b # square cross section
I = b*h**3/12
L = 1.0*np.ones(m)
v_B=q*L**4/(8*E*I)
#print ('Deflection', v_B)
M_A=0.5*q*L**2
ofile = open('analytical.csv','w')
ofile.write('"v_B";"M_A"\n')
np.savetxt(ofile,np.c_[v_B,M_A],fmt='%.6e',delimiter=';')
ofile.close()