import matplotlib.pyplot as plt
import pandas as pd

# Define file paths
file_u = "back_transform_2_u.csv"
file_up = "back_transform_2_up.csv"
file_u = "back_transform_1_u.csv"
file_up = "back_transform_1_up.csv"
try:
    # 1. Read the CSV files with semicolon separator
    # The files contain columns: "Time" and "N101,u"
    df_u = pd.read_csv(file_u, sep=";")
    df_up = pd.read_csv(file_up, sep=";")

    # Clean column names (strip potential whitespace characters)
    df_u.columns = df_u.columns.str.strip()
    df_up.columns = df_up.columns.str.strip()

    print("Files successfully imported.")

    # 2. Merge the dataframes on the 'Time' column to ensure alignment
    # We rename the displacement and velocity columns for clarity
    df_u = df_u.rename(columns={"N101,u": "u"})
    df_up = df_up.rename(columns={"N101,u": "up"})

    merged_df = pd.merge(df_u, df_up, on="Time")
    print(f"Data successfully merged. Total data points: {len(merged_df)}")

    # 3. Plot 'up' (velocity) vs 'u' (displacement)
    plt.figure(figsize=(8, 6))
    plt.plot(
        merged_df["u"],
        merged_df["up"],
        color="tab:purple",
        linewidth=1.5,
        label="Phase Space Trajectory",
    )

    # Styling the plot
    plt.title("Phase Space: $u_p$ over $u$", fontsize=14)
    plt.xlabel("Displacement ($u$)", fontsize=12)
    plt.ylabel("Velocity ($u_p$)", fontsize=12)
    plt.grid(True, linestyle="--", alpha=0.6)
    plt.legend()
    plt.tight_layout()

    # Display the plot
    print("Displaying plot...")
    plt.show()

except FileNotFoundError as e:
    print(f"Error: One of the files was not found. Details: {e}")
except KeyError as e:
    print(f"Error: Expected column names not found in the dataset. Details: {e}")
except Exception as e:
    print(f"An unexpected error occurred: {e}")
