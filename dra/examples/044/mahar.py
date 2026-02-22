import numpy as np
import os, sys, re

def parser():
    f = []
    ifile = open('natural_frequencies.txt','r')
    while 1:
        line = ifile.readline()
        if not line: break
        if re.search('RVALTAB.DISP',line):
            for i in range(3):
                line = ifile.readline()
        while 1:
            line = ifile.readline()
            liste = line.split()
            if len(liste) !=4: break
            f.append(liste[1])
    ifile.close()
    return np.array(f).astype(float)

ofile = open('mahar_rayleigh_01.dat','w')
xi = 0.02 # modal damping ratio

method = 'standard'
freq = parser() # Extract natural frequencies from RVALTAB.DISP

if method == 'standard':
    # Select two natural frequencies
    omega_1 = 2*np.pi*freq[0] # first
    omega_2 = 2*np.pi*freq[1] # second
    a_0 = xi*2*omega_1*omega_2/(omega_1+omega_2)
    a_1 = xi*2/(omega_1+omega_2)
    ofile.write('$COMPDAMP\n')
    ofile.write('! Damping ratio xi = %.3f\n' %xi)
    ofile.write('! Standard approach\n')
    ofile.write('    ALPHA = %.6e BETA = %.6e\n' %(a_1,a_0))
    method = 'lstsq'
    
if method == 'lstsq':    
    # Least-squares approach
    n = freq.shape[0]
    damping_ratios = xi*np.ones(n)
    w = np.pi*2*freq
    A = .5 * np.array([[1 / wn, wn] for wn in w])
    sol=np.linalg.lstsq(A, damping_ratios, rcond=None)[0]
#    print ('C=%.6e K + %.6e M'%(sol[0],sol[1]))
    ofile.write('$COMPDAMP\n')
    ofile.write('! Damping ratio xi = %.3f\n' %xi)
    ofile.write('! Least-squares approach\n')
    ofile.write('    ALPHA = %.6e BETA = %.6e\n' %(sol[1],sol[0]))

ofile.close()






