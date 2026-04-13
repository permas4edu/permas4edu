import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import mplcursors

def plot_comprehensive_analysis():
    # 1. Basic Setup & Time Range
    t = np.linspace(0, 20, 3600)
    
    # 2. Loading CSV Data
    print("Loading CSV files...")
    try:
        # Loading free vibration data
        df_free = pd.read_csv('modal_response_free_u.csv', sep=';')
        # Loading forced response data
        df_forced = pd.read_csv('modal_response_forced_u.csv', sep=';')
        
        # Assumption: First column is time, 2nd and 3rd are displacements
        csv_t_free = df_free.iloc[:, 0]
        csv_x1_free = df_free.iloc[:, 1]
        csv_x2_free = df_free.iloc[:, 2]
        
        csv_t_forced = df_forced.iloc[:, 0]
        csv_x1_forced = df_forced.iloc[:, 1]
        csv_x2_forced = df_forced.iloc[:, 2]
    except Exception as e:
        print(f"Error loading CSV files: {e}")
        return

    # 3. Calculating Mathematical Functions
    print("Calculating analytical solutions...")
    # Homogeneous Solutions (Free)
    x1 = (0.9092 * np.exp(-0.025 * t) * np.cos(23.344 * t) - 
          0.00097 * np.exp(-0.025 * t) * np.sin(23.344 * t) + 
          0.0918 * np.exp(-0.025 * t) * np.cos(7.420 * t) - 
          0.00031 * np.exp(-0.025 * t) * np.sin(7.420 * t))

    x2 = (-0.2044 * np.exp(-0.025 * t) * np.cos(23.3441 * t) + 
#          0.00022 * np.exp(-0.025 * t) * np.sin(23.3441 * t) + 
          0.20400 * np.exp(-0.025 * t) * np.cos(7.41960 * t))# - 
#          0.00069 * np.exp(-0.025 * t) * np.sin(7.41960 * t))

    # Total Solutions (Forced)
    x1p = 0.3659*np.sin(2*t) + 0.2004*np.cos(2*t) + 0.3726*np.sin(3*t) + 0.1591*np.cos(3*t)
    x2p = 0.3809*np.sin(2*t) + 0.2091*np.cos(2*t) + 0.9149*np.sin(3*t) + 0.3903*np.cos(3*t)
    
    x1t = (x1p - 0.1859*np.exp(-0.025*t)*np.cos(7.420*t) - 0.2164*np.exp(-0.025*t)*np.sin(7.420*t) + 
           0.8271*np.exp(-0.025*t)*np.cos(23.344*t) - 0.0097*np.exp(-0.025*t)*np.sin(23.344*t))
    
    x2t = (x2p - 0.4138*np.exp(-0.025*t)*np.cos(7.420*t) - 0.4815*np.exp(-0.025*t)*np.sin(7.420*t) + 
           0.0022*np.exp(-0.025*t)*np.sin(23.344*t) - 0.1858*np.exp(-0.025*t)*np.cos(23.344*t))

    # 4. Plotting Figure 1: Free Vibration
    print("Generating Figure 1 (Free Vibration)...")
    plt.figure(1, figsize=(12, 6))
    plt.plot(t, x1, label='Analytical $x_1(t)$', color='#1f77b4', lw=1.5)
    plt.plot(t, x2, label='Analytical $x_2(t)$', color='#d62728', lw=1.5)
    plt.plot(csv_t_free, csv_x1_free, 'k--', label='CSV Free $x_1$', alpha=0.5)
    plt.plot(csv_t_free, csv_x2_free, 'g--', label='CSV Free $x_2$', alpha=0.5)
    
    plt.title('Figure 1: Free Vibration (Analytical vs CSV)')
    plt.xlabel('Time (t)')
    plt.ylabel('Amplitude')
    plt.legend(loc='upper right', fontsize='small', ncol=2)
    plt.grid(True, linestyle='--', alpha=0.6)
    mplcursors.cursor(hover=True)

    # 5. Plotting Figure 2: Forced Response
    print("Generating Figure 2 (Forced Response)...")
    plt.figure(2, figsize=(12, 6))
    plt.plot(t, x1t, label='Analytical $x_{1t}(t)$', color='#2ca02c', lw=1.5)
    plt.plot(t, x2t, label='Analytical $x_{2t}(t)$', color='#ff7f0e', lw=1.5)
    plt.plot(csv_t_forced, csv_x1_forced, 'k--', label='CSV Forced $x_1$', alpha=0.5)
    plt.plot(csv_t_forced, csv_x2_forced, 'm--', label='CSV Forced $x_2$', alpha=0.5)
    
    plt.title('Figure 2: Forced Response (Analytical vs CSV)')
    plt.xlabel('Time (t)')
    plt.ylabel('Amplitude')
    plt.legend(loc='upper right', fontsize='small', ncol=2)
    plt.grid(True, linestyle='--', alpha=0.6)
    mplcursors.cursor(multiple=True)

    print("Done. Displaying plots.")
    plt.tight_layout()
    plt.show()

if __name__ == "__main__":
    plot_comprehensive_analysis()