import numpy as np
import matplotlib.pyplot as plt

# 1. Define signal parameters
sampling_rate = 100  # Sampling frequency in Hz
duration = 1.0        # Duration in seconds
num_samples = int(sampling_rate * duration)

# 2. Generate Gaussian White Noise
# Mean (loc) = 0, Standard Deviation (scale) = 1
rng = np.random.default_rng(seed=42)
mean = 0
std_dev = 1
white_noise = np.random.normal(loc=mean, scale=std_dev, size=num_samples)
time = np.linspace(0, duration, num_samples, endpoint=True)
data_to_export = np.column_stack((white_noise, time))
np.savetxt(
    'white_noise.dat', 
    data_to_export, 
    delimiter=':', 
    fmt='%+.18e',
    header='$FUNCTION TABLE LABEL = WHITE_NOISE',
    comments=''              # Verhindert das standardmäßige '#' vor der Kopfzeile
)
# 3. Verification
print(f"Empirical Mean: {np.mean(white_noise):.4f}")
print(f"Empirical Std Dev: {np.std(white_noise):.4f}")

# 4. Optional: Plotting the signal
time = np.linspace(0, duration, num_samples, endpoint=False)
plt.figure(figsize=(10, 4))
plt.plot(time, white_noise, lw=0.5, color='black')
plt.title("Gaussian White Noise ($\sigma = 1$)")
plt.xlabel("Time [s]")
plt.ylabel("Amplitude")
plt.grid(True)
plt.tight_layout()
plt.savefig('white_noise.png',dpi=80)
#plt.show()
