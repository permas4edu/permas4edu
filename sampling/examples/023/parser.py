import os
import sys
import re
import numpy as np
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
import seaborn as sns

mpl.rcParams['savefig.directory'] = os.getcwd()

txt = sys.argv[1]

freq = []
ic = 0
ival = 0
found_table = False

with open(txt, 'r') as ifile:
    while True:
        line = ifile.readline()
        if not line:
            break
        if line.startswith(' Loop'):
            ic += 1
        if re.search('RVALTAB\.DISP', line):
            found_table = True
            for _ in range(3):
                ifile.readline()
            ival_local = 0
            while True:
                data_line = ifile.readline()
                liste = data_line.split()
                if len(liste) != 4:
                    break
                ival_local += 1
                freq.append(float(liste[1]))
            ival = ival_local
            # Optionally break here if you only expect one 'RVALTAB.DISP' table
            # break

if found_table and ic > 0 and ival > 0:
    freq_array = np.array(freq).reshape((ic, ival))
    column_names = [f'$f_{i+1}$' for i in range(ival)]
    df = pd.DataFrame(freq_array, columns=column_names)

    p = sns.pairplot(df)
    for ax in p.axes.flatten():
        ax.ticklabel_format(style='sci', scilimits=(0, 0), axis='both')
    plt.tight_layout()

    fig = plt.figure('Random', figsize=(12, 5))
    num_variables = ival
    num_samples = ic
    for i in range(num_variables):
        plt.subplot(1, num_variables, i + 1)
        plt.xlabel(r'$f_%i$' % (i + 1))
        plt.ylabel('Density')
        sns.histplot(freq_array[:, i], kde=True)
    plt.tight_layout()
    plt.show()
else:
    print(f"Error: Could not find the 'RVALTAB.DISP' table in '{txt}' or the data was incomplete.")