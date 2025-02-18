import os, sys
import pandas as pd
import seaborn as sns
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
mpl.use('Agg')
import matplotlib.pyplot as plt

n = int(sys.argv[1])

rng = np.random.default_rng(seed=42)
lower=0.000064516
upper=0.0225806
X=rng.uniform(lower,upper,(n,5))
X=np.sort(X,axis=0)
df = pd.DataFrame(X,columns=['DV_1','DV_2','DV_3','DV_4','DV_5'])
ofile = open('plevris_uniform.dat','w')
ofile.write('$FUNCTION TABLE FID = 1\n')
np.savetxt(ofile,np.c_[np.arange(1,n+1),X[:,0]],fmt='%.1e : %.8e')
ofile.write('$FUNCTION TABLE FID = 2\n')
np.savetxt(ofile,np.c_[np.arange(1,n+1),X[:,1]],fmt='%.1e : %.8e')
ofile.write('$FUNCTION TABLE FID = 3\n')
np.savetxt(ofile,np.c_[np.arange(1,n+1),X[:,2]],fmt='%.1e : %.8e')
ofile.write('$FUNCTION TABLE FID = 4\n')
np.savetxt(ofile,np.c_[np.arange(1,n+1),X[:,3]],fmt='%.1e : %.8e')
ofile.write('$FUNCTION TABLE FID = 5\n')
np.savetxt(ofile,np.c_[np.arange(1,n+1),X[:,4]],fmt='%.1e : %.8e')
ofile.close()
p=sns.pairplot(df)
for ax in p.axes.flatten():
    ax.ticklabel_format(style='sci', scilimits=(0,0), axis='both')
plt.tight_layout()
plt.savefig('pairplot',dpi=80)
#plt.show()
