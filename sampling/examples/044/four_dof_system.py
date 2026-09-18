import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# Datei mit Semikolon als Trennzeichen einlesen
df = pd.read_csv('sampling_srhis.csv', sep=';')

# Spaltennamen bereinigen (Anführungszeichen und Leerzeichen entfernen)
df.columns = [col.strip().replace('"', '') for col in df.columns]

# Parameter-Spalte (X-Achse) und Lambda-Spalten (Y-Achse) definieren
param_col = df.columns[0]
lambda_cols = df.columns[1:]

# Plot erstellen
plt.figure(figsize=(10, 6))

for i, col in enumerate(lambda_cols, start=1):
    plt.plot(df[param_col]/0.03, df[col], label=rf'$\lambda_{i}$')

# Diagramm anpassen
plt.xlabel(r'Parameter $\delta$')
plt.xticks(np.linspace(0.,150.,4))
plt.ylabel(r'Eigenvalue $\lambda_i$')
plt.grid(True)
plt.legend()

plt.tight_layout()
plt.show()