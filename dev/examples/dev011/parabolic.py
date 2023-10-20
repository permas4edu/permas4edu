import os, sys
import numpy as np
E = 216.E9 # Young's modulus
nu = 0.3 # Poisson ratio
rho = 7900. # density
a = 1.0   # height of parabolic plate
h = 0.001 # Plate thickness
pmat = sys.argv[1]
f = []
ifile = open(pmat,'r')
lines = ifile.readlines()
for line in lines:
    liste = line.split()
    if liste[0].isdigit(): 
        f.append(liste[1])
f = np.array(f).astype(float)
D = E*h**3/(12*(1-nu**2))
f_nondim = 2*np.pi*f*a**2*np.sqrt(rho*h/D)
print ('Non-dimensional frequencies of a parabolic plate with elliptical cutout')
print (f_nondim)
