from scipy.io import loadmat
import numpy as np
A=loadmat('ansyslumpedmass.mat')
print ('Diagonal mass matrix')
print (np.diag(A['MatM']))

