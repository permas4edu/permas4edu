import os, sys
import pandas as pd
import numpy as np
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
from scipy.fft import fft, fftfreq
from scipy.signal import stft
from matplotlib.colors import LogNorm
import mplcursors

# 1. Load Data
try:
    # Using ';' as separator based on file snippet
    df = pd.read_csv('u_u.csv', sep=';')
    time = df.iloc[:, 0].values
    signal = df.iloc[:, 1].values
    print("File loaded successfully.")
except Exception as e:
    print(f"Error loading file: {e}")
    exit()

# 2. Calculate Sampling Parameters
dt = time[1] - time[0]
fs = 1 / dt
print(f"Sampling Frequency (fs): {fs:.2f} Hz")

# 3. Frequency Analysis
# FFT Calculation
n = len(signal)
yf = fft(signal)
xf = fftfreq(n, dt)[:n//2]
magnitude_fft = 2.0/n * np.abs(yf[0:n//2])

# STFT Calculation
# nperseg=2048 provides better frequency resolution for the 0-200 Hz range
f_stft, t_stft, Zxx = stft(signal, fs, nperseg=2048)
magnitude_stft = np.abs(Zxx)

# 4. Visualization
fig, axes = plt.subplots(3, 1, figsize=(12, 10))

# Subplot 1: Time Domain Signal
line1, = axes[0].plot(time, signal, color='tab:blue')
axes[0].set_title('Time Domain Signal')
axes[0].set_ylabel('Amplitude')
axes[0].grid(True, alpha=0.3)

# Subplot 2: Frequency Domain (FFT) - Limited to 200 Hz
line2, = axes[1].plot(xf, magnitude_fft, color='tab:red')
axes[1].set_title('FFT - Frequency Spectrum (0-200 Hz)')
axes[1].set_xlabel('Frequency [Hz]')
axes[1].set_ylabel('Magnitude')
axes[1].set_xlim(0, 200)
axes[1].grid(True, alpha=0.3)

# Subplot 3: Short-Time Fourier Transform (STFT) - Limited to 200 Hz
# Using LogNorm to better visualize lower magnitude harmonics
mesh = axes[2].pcolormesh(t_stft, f_stft, magnitude_stft, 
                          shading='gouraud', 
                          cmap='magma',
                          norm=LogNorm(vmin=magnitude_stft.min()+1e-9))
axes[2].set_title('STFT Spectrogram (0-200 Hz)')
axes[2].set_ylabel('Frequency [Hz]')
axes[2].set_xlabel('Time [s]')
axes[2].set_ylim(0, 200)
plt.colorbar(mesh, ax=axes[2], label='Magnitude (Log Scale)')

# 5. Interactive Cursors
# Basic hover for line plots
cursor_lines = mplcursors.cursor([line1, line2], hover=True)

# Specialized hover for the Spectrogram mesh
cursor_mesh = mplcursors.cursor(mesh, hover=True)
@cursor_mesh.connect("add")
def _(sel):
    x, y = sel.target
    sel.annotation.set_text(f"Time: {x:.4f}s\nFreq: {y:.1f}Hz")

plt.tight_layout()
print("Plotting complete. Hover over the graphs to inspect values.")
plt.show()
