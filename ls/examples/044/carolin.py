import pandas as pd
import numpy as np

def calculate_displacements(file_path):
    # 1. Import data
    try:
        df = pd.read_csv(file_path, sep=';')
        
        # Clean column names
        df.columns = df.columns.str.strip().str.replace('"', '')
        
        # 2. Extract coordinates
        x = df['x'].values
        y = df['y'].values
        z = df['z'].values
        
        # Calculate displacement fields
        df['u'] = 0.10 + 0.10 * x + 0.2 * y + 0.2 * z
        df['v'] = 0.05 + 0.15 * x + 0.1 * y + 0.2 * z
        df['w'] = 0.05 + 0.10 * x + 0.2 * y + 0.2 * z
        # Quadratic displacements
        df['u'] = 0.10 + 0.20*x + 0.2*y + 0.1*z + 0.15*x**2 + 0.20*y**2+0.1*z**2+0.15*x*y+0.1*y*z+0.10*z*x
        df['v'] = 0.15 + 0.10*x + 0.1*y + 0.2*z + 0.20*x**2 + 0.15*y**2+0.1*z**2+0.20*x*y+0.1*y*z+0.20*z*x 
        df['w'] = 0.15 + 0.15*x + 0.2*y + 0.1*z + 0.15*x**2 + 0.10*y**2+0.2*z**2+0.10*x*y+0.2*y*z+0.15*z*x

        # 3. Add constant columns and the colon separator
        df['c1'] = 1
        df['c2'] = 2
        df['c3'] = 3
        df['sep_colon'] = ':'
        
        return df

    except Exception as e:
        return f"Error loading file: {e}"

# File paths
file_name = 'hull.csv'
output_path = 'values.dat'

# Execute calculation
result_df = calculate_displacements(file_name)

if isinstance(result_df, pd.DataFrame):
    # 4. Export columns in the specific order: 
    # Label, 1, 2, 3, :, u, v, w
    column_order = ['Label', 'c1', 'c2', 'c3', 'sep_colon', 'u', 'v', 'w']
    
    # Export with space as the primary separator
    result_df[column_order].to_csv(output_path, sep=' ', index=False, header=False)
    
    print(f"Export successful: {output_path}")
    print("Preview of exported data:")
    print(result_df[column_order].head())
else:
    print(result_df)
