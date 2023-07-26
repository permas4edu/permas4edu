import numpy as np
import os, sys
n = int(sys.argv[1])
s = np.sort(np.random.default_rng().uniform(0.,0.02,n))
print (s)
ofile = open('uniform.dat','w')
ofile.write('$ENTER FUNCTION\n')
ofile.write('$FUNCTION TABLE FID = 1\n')
np.savetxt(ofile,np.c_[np.arange(1,n+1),s],fmt='%.1f:%e')
ofile.write('$EXIT FUNCTION\n')
ofile.write('$FIN\n')
ofile.close()
