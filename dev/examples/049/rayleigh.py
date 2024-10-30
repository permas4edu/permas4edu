#!/usr/bin/env pyINTES
import numpy as np
import os, sys, re

res = sys.argv[1] # PERMAS result file
xi  = float(sys.argv[2]) # Modal damping ratio

ifile = open(res,'r')
omega = []
while 1:
    line = ifile.readline()
    if not line: break
    if re.search('RVALTAB.DISP',line):
#       for i in range(8): # standard .res
        for i in range(3): # port res .res 
            line = ifile.readline()
        while 1:
            line = ifile.readline()
            liste = line.split()
            if len(liste) != 4: break
            omega.append(liste[3])
ifile.close()

omega = np.array(omega).astype(float)
print ('f=',omega/(2*np.pi))
alpha = 2*xi/(omega[0]+omega[1])
beta  = 2*xi*omega[0]*omega[1]/(omega[0]+omega[1])
print ('alpha=',alpha)
print ('beta=',beta)
ofile = open('rayleigh_damping.dat','w')
ofile.write('$ENTER COMPONENT NAME = DFLT_COMP DOFTYPE = DISP\n')
ofile.write('\n')
ofile.write('    $SYSTEM NAME = S_STEP_1\n')
ofile.write('\n')
ofile.write('        $COMPDAMP\n')
ofile.write('            ALPHA = %s BETA = %s\n' %(str(alpha),str(beta)))
ofile.write('\n')
ofile.write('    $END SYSTEM\n')
ofile.write('\n')
ofile.write('$EXIT COMPONENT\n')
ofile.write('\n')
ofile.write('$FIN\n')
ofile.close()

