import numpy as np

nsamples = 10
ndof = 3
U=np.random.uniform(low=-0.5,high=0.5,size=nsamples*2*ndof)
ofile = open('uniform.dat','w')
for i in range(nsamples):
    ofile.write('$LOADING NAME = L_STEP_%i\n' %(i+1)) 
    ofile.write('    $INIVAL DISP SOURCE = INPUT\n')
    np.savetxt(ofile,np.c_[np.arange(1,ndof+1),np.ones(ndof), U[2*ndof*i:2*ndof*i+ndof]],fmt='%8i %8i : %.8e')
    ofile.write('    $INIVAL VELO SOURCE = INPUT\n')
    np.savetxt(ofile,np.c_[np.arange(1,ndof+1),np.ones(ndof), U[2*ndof*i+ndof:2*ndof*i+2*ndof]],fmt='%8i %8i : %.8e')
    ofile.write('$END LOADING\n')
ofile.close()    
