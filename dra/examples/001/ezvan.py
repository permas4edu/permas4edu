import matplotlib as mpl
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

df = pd.read_csv("acceleration_aout.csv", delimiter=";")
fig = plt.figure("FRF")
a0 = 1.0e-3

ax = fig.add_subplot(111)
ax.plot(df["Frequency"], 20 * np.log10(df["N1317,v"] / a0))
ax.set_xlabel("Frequency $f$ [Hz]")
ax.set_ylabel("Acceleration [dB]")
ax.set_xlim(0.0, 1000.0)
ax.set_xticks(np.linspace(0.0, 1000.0, 11))
ax.grid()
plt.show()
