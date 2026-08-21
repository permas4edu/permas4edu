import os
import glob
import platform
import subprocess
import matplotlib as mpl
import matplotlib.animation as animation
import matplotlib.pyplot as plt
import pandas as pd
mpl.use("Agg")

csvs = sorted(glob.glob("frf_*_frf.csv"))
dfs = [pd.read_csv(csv, delimiter=";") for csv in csvs]

fig, ax = plt.subplots(figsize=(8, 5))

y_min = min(df["N101,u"].min() for df in dfs)
y_max = max(df["N101,u"].max() for df in dfs)
y_margin = (y_max - y_min) * 0.05

ax.set_xlabel(r"Frequency $f$ [Hz]")
ax.set_ylabel(r"Magnitude $x_1$")
ax.set_xlim(0.0, 1.0)
ax.set_ylim(y_min - y_margin, y_max + y_margin)
ax.grid(True)

(line,) = ax.plot([], [], lw=2, color="tab:blue")
title = ax.set_title("")


def init():
    line.set_data([], [])
    title.set_text("")
    return line, title


def update(frame):
    df = dfs[frame]
    line.set_data(df["Frequency"], df["N101,u"])
    title.set_text(f"Iteration {frame + 1}")
    return line, title


anim = animation.FuncAnimation(
    fig, update, frames=len(csvs), init_func=init, blit=True, interval=500
)
gif_path = "frf_animation.gif"
anim.save(gif_path, writer="pillow", fps=2)
#  
if platform.system() == "Windows":
    os.startfile(gif_path)
else:  # Linux / Unix
    subprocess.run(["xdg-open", gif_path])
