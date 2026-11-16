import glob
import pandas as pd
import matplotlib.pyplot as plt

# 1. Find and read all matching CSV files in the directory
csv_files = sorted(glob.glob("h_*_frf_u.csv"))

if not csv_files:
    print("No matching CSV files found.")
else:
    # Read CSV files using semicolon as separator
    df_list = [pd.read_csv(file, sep=';') for file in csv_files]
    combined_df = pd.concat(df_list, ignore_index=True)

    # Write combined data to a new CSV file
    output_file = "combined_frf.csv"
    combined_df.to_csv(output_file, index=False, sep=';')
    print(f"Data successfully combined and saved to '{output_file}'.")

    # 2. Use an index as the abscissa (starting at 1) and plot columns starting from the second one
    plt.figure(figsize=(12, 7))
    
    # Create an index from 1 to the number of rows
    x_index = range(1, len(combined_df) + 1)

    # combined_df.columns[1:] skips the first column
    y_cols = combined_df.columns[1:]

    for col in y_cols:
        plt.plot(x_index, combined_df[col], label=col)

    plt.xlabel("Index (starting at 1)")
    plt.ylabel("Sensor Response")
    plt.title("Sensor Responses (excluding the first column) over a Continuous Index")
    plt.legend(bbox_to_anchor=(1.05, 1), loc="upper left", fontsize="small")
    plt.grid(True)
    plt.tight_layout()
    plt.show()