import os, sys
import numpy as np
E2 = 2.e9  # Young's modulus
nu = 0.25 # Poisson ratio
rho = 1500. # density
a = 1.0   # dimension square plate
b = a # square plate
h = 0.2*a # Plate thickness
pmat = sys.argv[1]
f = []
ifile = open(pmat,'r')
lines = ifile.readlines()
for line in lines:
    liste = line.split()
    if liste[0].isdigit(): 
        f.append(liste[1])
f = np.array(f).astype(float)
f_nondim = 2*np.pi*f*b**2*np.sqrt(rho/(E2*h**2))
print ('Non-dimensional frequencies of a square plate with a cutout')
print (f_nondim)
