import os
import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns

# Configuration
seed = 42
mean = 4.0
variance = 0.3
num_samples = 1000
num_variables = 3
output_filename = 'tairan_distribution.dat'
figure_title = 'Random'
figure_size = (12, 5)
dpi = 80

std_dev = np.sqrt(variance)
np.random.seed(seed)
mpl.use('Agg')
mpl.rcParams['savefig.directory'] = os.getcwd()

# Generate and sort random samples
samples = np.sort(np.random.normal(loc=mean, scale=std_dev, size=(num_samples, num_variables)), axis=0)

# Write data to file
with open(output_filename, 'w') as ofile:
    x = np.arange(1, num_samples + 1)
    for i in range(num_variables):
        ofile.write(f'$FUNCTION TABLE FID = {i+1}\n')
        # Save the sorted samples and a range of numbers (representing index?)
        np.savetxt(ofile, np.c_[samples[:, i], x], fmt='%.8e : %.8e')
        ofile.write('!\n')

# Create and save the plot
fig = plt.figure(figure_title, figsize=figure_size)
for i in range(num_variables):
    plt.subplot(1, num_variables, i + 1)
    plt.xlabel(r'$k_%i$' % (i + 1))
    plt.ylabel('Density')
    sns.histplot(samples[:, i], kde=True)

plt.tight_layout()
plt.savefig('tairan_random', dpi=dpi)