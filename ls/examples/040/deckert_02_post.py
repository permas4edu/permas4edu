import pandas as pd
import matplotlib.pyplot as plt
import matplotlib.ticker as ticker

# --- Configuration ---
L = 4.0  # Total length of the beam (replace with your actual value)
num_elements = 10
element_length = L / num_elements
file_path = 'stress_resultants_sr.csv'

print(f"Loading data from {file_path}...")

try:
    # 1. Load the data
    # Using sep=';' as identified in the file structure
    df = pd.read_csv(file_path, sep=';')
    
    # 2. Prepare data for plotting
    x_coords = []
    shear_force = []
    bending_moment = []

    print("Processing element data...")

    for i in range(1, num_elements + 1):
        # Column names based on the provided format:
        # C2/C5 = Start of element, C8/C11 = End of element
        c2, c5 = f'E{i},C2', f'E{i},C5'    
        c8, c11 = f'E{i},C8', f'E{i},C11'  
        
        # Calculate x-positions for the current element
        x_start = (i - 1) * element_length
        x_end = i * element_length
        
        # Append data for element start
        x_coords.append(x_start)
        shear_force.append(df[c2].iloc[0])
        bending_moment.append(df[c5].iloc[0])
        
        # Append data for element end
        x_coords.append(x_end)
        shear_force.append(df[c8].iloc[0])
        bending_moment.append(df[c11].iloc[0])

    print("Generation of plots in progress...")

    # 3. Visualization
    fig, (ax1, ax2) = plt.subplots(2, 1, figsize=(10, 8), sharex=True)

    # Plot 1: Shear Force V(x)
    ax1.plot(x_coords, shear_force, 'b-', linewidth=2, label='Shear Force $V(x)$')
#    ax1.fill_between(x_coords, 0, shear_force, color='blue', alpha=0.15, hatch='||')
    ax1.set_ylabel('Shear Force $V$ [N]')
    ax1.set_title(f'Internal Forces along Beam Length (L = {L})')
    ax1.grid(True, which='both', linestyle='--', alpha=0.5)
    # Apply scientific notation to y-axis
    ax1.yaxis.set_major_formatter(ticker.ScalarFormatter(useMathText=True))
    ax1.ticklabel_format(style='sci', axis='y', scilimits=(0,0))
    ax1.legend(loc='upper right')

    # Plot 2: Bending Moment M(x)
    ax2.plot(x_coords, bending_moment, 'r-', linewidth=2, label='Bending Moment $M(x)$')
#    ax2.fill_between(x_coords, 0, bending_moment, color='red', alpha=0.15, hatch='--')
    ax2.set_xlabel('Beam Position $x$ [m]')
    ax2.set_ylabel('Bending Moment $M$ [Nm]')
    ax2.grid(True, which='both', linestyle='--', alpha=0.5)
    # Apply scientific notation to y-axis
    ax2.yaxis.set_major_formatter(ticker.ScalarFormatter(useMathText=True))
    ax2.ticklabel_format(style='sci', axis='y', scilimits=(0,0))
    ax2.legend(loc='upper right')

    # Set x-axis limits
    plt.xlim(0, L)
    plt.tight_layout()

    print("Success: Displaying plots.")
    plt.show()

except FileNotFoundError:
    print(f"Error: The file '{file_path}' was not found.")
except Exception as e:
    print(f"An error occurred: {e}")
