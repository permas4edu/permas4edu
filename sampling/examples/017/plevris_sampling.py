import os, sys
import pandas as pd
import seaborn as sns
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
#mpl.use('Agg')
import matplotlib.pyplot as plt
csv1 = sys.argv[1]

df = pd.read_csv(csv1,delimiter=';')
p=sns.pairplot(df)
for ax in p.axes.flatten():
    ax.ticklabel_format(style='sci', scilimits=(0,0), axis='both')
plt.tight_layout()
fig = plt.figure('Boxplot')
b=sns.boxplot(df,y=df[df.keys()[1]])
plt.show()
