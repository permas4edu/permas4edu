import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import mplcursors
df = pd.read_csv('sampling_srhis.csv',delimiter=';')
fig = plt.figure('Natural frequencies')
ax = fig.add_subplot(111)
m_rod = 0.785
sc1=ax.plot(df['DV_1']/m_rod,df['NONDIM_F_1'],'o',label=r'$\widebar{\lambda}_1$')
sc2=ax.plot(df['DV_1']/m_rod,df['NONDIM_F_2'],'o',label=r'$\widebar{\lambda}_2$')
sc3=ax.plot(df['DV_1']/m_rod,df['NONDIM_F_3'],'o',label=r'$\widebar{\lambda}_3$')
sc4=ax.plot(df['DV_1']/m_rod,df['NONDIM_F_4'],'o',label=r'$\widebar{\lambda}_4$')
sc5=ax.plot(df['DV_1']/m_rod,df['NONDIM_F_5'],'o',label=r'$\widebar{\lambda}_5$')
ax.set_xlabel(r'Mass ratio $\alpha_M$')
ax.set_ylabel(r'Nondimensional frequency')
ax.grid()
ax.set_xlim(0.,1.1)
ax.set_xticks(np.linspace(0.,1.,11))
x=df['DV_1'].values/0.785
y1=df['NONDIM_F_1']
y2=df['NONDIM_F_2']
y3=df['NONDIM_F_3']
y4=df['NONDIM_F_4']
y5=df['NONDIM_F_5']
ax.legend(shadow=True).set_draggable(True)
mplcursors.cursor(sc1, multiple=True).connect(
    "add", lambda sel: sel.annotation.set_text(format(str(y1[sel.index]), "s")) )
mplcursors.cursor(sc2, multiple=True).connect(
    "add", lambda sel: sel.annotation.set_text(format(str(y2[sel.index]), "s")) )
mplcursors.cursor(sc3, multiple=True).connect(
    "add", lambda sel: sel.annotation.set_text(format(str(y3[sel.index]), "s")) )
mplcursors.cursor(sc4, multiple=True).connect(
    "add", lambda sel: sel.annotation.set_text(format(str(y4[sel.index]), "s")) )
mplcursors.cursor(sc5, multiple=True).connect(
    "add", lambda sel: sel.annotation.set_text(format(str(y5[sel.index]), "s")) )
plt.tight_layout()
plt.show()