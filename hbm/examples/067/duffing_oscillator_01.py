import os
import h5py
import matplotlib as mpl
mpl.rcParams['savefig.directory']=os.getcwd()
import matplotlib.pyplot as plt
import glob
import numpy as np
import os

def plot_hbm_comparison():
    # Your specified gamma values in the same order as the sorted file list
    gamma_values = [-0.02, 0.0, 0.02, 0.1]
    
    # Get all HDF files and sort them (hbm_1, hbm_2, hbm_3, hbm_4)
    file_list = sorted(glob.glob("hbm_*.hdf"))
    
    if len(file_list) != len(gamma_values):
        print(f"Warning: Found {len(file_list)} files but have {len(gamma_values)} gamma values.")

    plt.figure(figsize=(10, 6))

    for i, file_path in enumerate(file_list):
        try:
            with h5py.File(file_path, 'r') as h5f:
                # We use a recursive search to find 'Curve2' and '.Abscissae' 
                # to bypass group naming issues (like spaces in 'TYPE = DISP')
                freq_data = None
                h1_data = None

                def visitor(name, obj):
                    nonlocal freq_data, h1_data
                    if isinstance(obj, h5py.Dataset):
                        if name.endswith(".Abscissae"):
                            freq_data = obj[:]
                        elif name.endswith("Curve2"):
                            h1_data = obj[:]

                h5f.visititems(visitor)

                if freq_data is not None and h1_data is not None:
                    # Assign gamma value if within range, else use filename
                    label_gamma = f"$\gamma$ = {gamma_values[i]}" if i < len(gamma_values) else file_path
                    
                    plt.plot(2*np.pi*freq_data, h1_data, label=label_gamma, linewidth=1.5)
                    print(f"Successfully plotted {file_path} as {label_gamma}")
                else:
                    print(f"Could not find required datasets in {file_path}")

        except Exception as e:
            print(f"Error processing {file_path}: {e}")

    # Plot Styling
    plt.title('Harmonic Balance: H1 Response for varying $\gamma$')
    plt.xlabel('Frequency [Hz]')
    plt.ylabel('Amplitude (Displacement)')
    plt.xlim(0.6,1.8)
    plt.ylim(0.,6.)
    plt.grid(True, which="both", linestyle="--", alpha=0.5)
    plt.legend()
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    plot_hbm_comparison()