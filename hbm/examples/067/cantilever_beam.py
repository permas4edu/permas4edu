import h5py
import matplotlib.pyplot as plt
import numpy as np

def deep_search_permas_fixed(file_path, target_label='H1-N3,v'):
    try:
        with h5py.File(file_path, 'r') as f:
            print(f"--- Deep Searching File: {file_path} ---")
            
            freq_data = None
            y_data = None
            
            def visitor(name, obj):
                nonlocal freq_data, y_data
                
                # 1. Find Frequency (Abscissa)
                if isinstance(obj, h5py.Dataset):
                    # Check for frequency in name
                    if 'frequ' in name.lower() or 'abscissa' in name.lower():
                        freq_data = obj[:]
                        print(f"[Match] Frequency axis found at: {name}")

                    # 2. Find the Target Label
                    # Check if the dataset itself is named like our target
                    if target_label in name:
                        y_data = obj[:]
                        print(f"[Match] Dataset found by name: {name}")
                    
                    # Or check if the label is in the attributes
                    elif 'Label' in obj.attrs:
                        labels = obj.attrs['Label']
                        clean_labels = [l.decode('utf-8').strip() if isinstance(l, bytes) else l.strip() 
                                        for l in labels]
                        
                        if target_label in clean_labels:
                            col_index = clean_labels.index(target_label)
                            # Check dimensionality
                            if obj.ndim == 1:
                                y_data = obj[:] # It's a 1D array
                                print(f"[Match] Found 1D dataset with label at: {name}")
                            else:
                                y_data = obj[:, col_index] # It's a 2D matrix
                                print(f"[Match] Found label in {obj.ndim}D matrix at: {name} (Col: {col_index})")

            # Execute search
            f.visititems(visitor)

            if freq_data is not None and y_data is not None:
                # Synchronize lengths if they differ slightly
                min_len = min(len(freq_data), len(y_data))
                if len(freq_data) != len(y_data):
                    print(f"Note: Cropping data to match lengths ({min_len} samples)")
                
                plt.figure(figsize=(10, 6))
                plt.plot(2*np.pi*freq_data[:min_len], y_data[:min_len], 
                         label=target_label, color='blue', linewidth=1.5)
                plt.xlim(100.,600.)
                plt.title(f"PERMAS Frequency Response: {target_label}")
                plt.xlabel("Frequency [Hz]")
                plt.ylabel("Magnitude")
                plt.yscale('log') # Harmonic analysis is usually best in log scale
                plt.grid(True, which='both', linestyle='--', alpha=0.6)
                plt.legend()
                plt.tight_layout()
                plt.show()
            else:
                print("\nError: Could not find both Frequency and Target Data.")
                if freq_data is None: print("- Frequency missing.")
                if y_data is None: print(f"- {target_label} missing.")

    except Exception as e:
        print(f"An unexpected error occurred: {e}")

if __name__ == "__main__":
    # Your specific file and target
    deep_search_permas_fixed('hbm.hdf', 'H1-N3,v')