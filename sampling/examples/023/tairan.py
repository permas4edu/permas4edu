import os
import numpy as np
import matplotlib as mpl
mpl.use('Agg')
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import seaborn as sns
np.random.seed(42)  # You can use any integer as the seed
mean = 4.0
variance = 0.3
std_dev = np.sqrt(variance)
num_samples = 1000  # You can change the number of random samples
num_variables = 3 # Number of variables
# Generate random numbers from the Gaussian distribution
samples = np.sort(np.random.normal(loc=mean, scale=std_dev, size=(num_samples,num_variables)),axis=0)
ofile = open('tairan_distribution.dat','w')
fig = plt.figure('Random',figsize=(12,5))
x=np.arange(1,num_samples+1)
for i in range(3):
    plt.subplot(1, num_variables, i+1)
    plt.xlabel('Value')
    plt.ylabel('Frequency/Density')
    ofile.write('$FUNCTION TABLE FID = %i\n' %(i+1))
    np.savetxt(ofile, np.c_[samples[:,i],x],fmt='%.8e : %.8e')
    ofile.write('!\n')
    sns.histplot(samples[:,i], kde=True) # Histogram with Kernel Density Estimate
ofile.close()
plt.tight_layout()
plt.savefig('tairan_random',dpi=80)
