import numpy as np
from scipy.linalg import eig, eigh
M = np.identity(4)
K = np.diag(2*np.ones(4))-np.diag(np.ones(3),1)-np.diag(np.ones(3),-1)
K[-1,-1]+=-1
G = np.zeros((4,4))
Z = np.zeros((4,4))
G[0,1]=G[2,3]=1.0
G[1,0]=G[3,2]=-1.0

print (M)
print (K)
print (G)
A = np.bmat('Z,K; K,G')
B = np.bmat(np.r_[np.c_[K,Z],np.c_[Z,-M]])
wc,vc = eig(A,B)
print (wc.imag)
ind = np.argsort(np.abs(wc.imag))
print (wc.imag[ind])
w,v=eigh(K,M)
print (w)
