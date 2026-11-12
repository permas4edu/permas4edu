import matplotlib.pyplot as plt
import mplcursors
import pandas as pd

# CSV-Datei einlesen (mit Semikolon als Trennzeichen)
df = pd.read_csv("modes_mode.csv", sep=";")

# Die X-Koordinate als x-Achse definieren
x = df.iloc[:, 0]

# Das Figure- und Axes-Objekt erstellen
fig, ax = plt.subplots(figsize=(10, 6))

# Die ersten 5 Eigenformen (Spalten 1 bis 5) plotten
for i in range(1, 6):
  col_name = df.columns[i]
  # Frequenz aus dem Spaltennamen extrahieren (z.B. "Freq_9.8024E+00_u" -> "9.8024E+00 Hz")
  freq_str = col_name.split("_")[1]
  label = f"Mode {i} ({freq_str} Hz)"

  ax.plot(x, df.iloc[:, i], label=label, linewidth=1.5)

# Diagramm-Beschriftungen auf Englisch
ax.set_title("First 5 Mode Shapes over Coordinate X", fontsize=14)
ax.set_xlabel("Coordinate X", fontsize=12)
ax.set_ylabel("Displacement / Amplitude", fontsize=12)
ax.grid(True, linestyle="--", alpha=0.6)
ax.legend(title="Modes & Frequencies")

# mplcursor aktivieren, um Werte beim Hovern anzuzeigen
cursor = mplcursors.cursor(ax, hover=True)
cursor.connect(
    "add", lambda sel: sel.annotation.set_text(f"{sel.artist.get_label()}\nX: {sel.target[0]:.3f}\nY: {sel.target[1]:.3f}")
)

plt.tight_layout()
plt.show()