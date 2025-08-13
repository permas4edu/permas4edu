import numpy as np
import os, sys
import pandas as pd
import matplotlib as mpl
import matplotlib.pyplot as plt
from matplotlib.animation import FuncAnimation

csv = sys.argv[1]
def update(frame):
    ax.clear()  # Clear the previous plot     
    ax.set_ylim(-1050.,1050.)
    ax.set_xlim(0.,20.)
    ax.grid()
    ax.set_xlabel(r'Coordinate $x$ [mm]')
    ax.plot(df[df.keys()[0]], df[df.keys()[frame+1]],lw=3,label=r'$\dot{u}(x,t)$')
    ax.set_title(f'Wave Propagation - Time Step {frame+1}') 
    ax.legend(shadow=True)
    line.set_data(df[df.keys()[0]],df[df.keys()[frame+1]])
    return line, title

df = pd.read_csv(csv,delimiter=';')
m,n = df.shape
fig, ax = plt.subplots()
# Create a line object to update
ax.set_xlim(0.,20.)
ax.set_xlabel(r'Coordinate $x$ [mm]')
ax.grid()
# Create a Text object to use as the title, positioned at the top center of the axes
title = ax.text(0.5, 1.05, '', transform=ax.transAxes, ha='center')
if csv == 'wave_propagation_vrod.csv':
    ax.set_ylim(-1050.,1050.)
else:
    ax.set_ylim(-0.2,0.2) 
line, = ax.plot(df[df.keys()[0]], df[df.keys()[1]])
# Create the animation
ani = FuncAnimation(fig, update, frames=range(n-1), interval=20, blit=False)
# Save the animation
ani.save('wave_propagation.gif', writer='pillow')
# S
plt.show()
