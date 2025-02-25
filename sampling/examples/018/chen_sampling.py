import os, sys
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import seaborn as sns
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
csv1 = sys.argv[1]
csv2 = sys.argv[2]

df1=pd.read_csv(csv1,delimiter=';')
df2=pd.read_csv(csv2,delimiter=';').drop(['Sample No.'],axis=1)
df2.rename(columns={"L_1": "$\lambda_1$", "L_2": "$\lambda_2$", "L_3": "$\lambda_3$"}, inplace=True, errors="raise")
sns.pairplot(df2)
plt.tight_layout()
plt.show()
