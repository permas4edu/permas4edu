import matplotlib.pyplot as plt
import mplcursors
import pandas as pd

# 1. Load CSV files (semicolon-separated)
df_design = pd.read_csv("sampling_xdhis.csv", sep=";", decimal=".")
df_freqs = pd.read_csv("sampling_srhis.csv", sep=";", decimal=".")

print(f"Loaded {len(df_design)} rows from sampling_xdhis.csv")
print(f"Loaded {len(df_freqs)} rows from sampling_srhis.csv")

# 2. Synchronize row counts if they differ
min_len = min(len(df_design), len(df_freqs))
if len(df_design) != len(df_freqs):
    print(
        f"WARNING: Row counts do not match! Truncating both to {min_len} rows."
    )
    df_design = df_design.iloc[:min_len]
    df_freqs = df_freqs.iloc[:min_len]

# 3. Filter out sample/index/ID columns from df_freqs
freq_cols = [
    col
    for col in df_freqs.columns
    if not any(
        keyword in col.lower() for keyword in ["sample", "no", "id", "index"]
    )
]

if len(freq_cols) < 3:
    raise ValueError(
        f"Expected at least 3 frequency columns, but found: {freq_cols}"
    )

# Assign frequency columns (F1, F2, F3)
f1_name, f2_name, f3_name = freq_cols[0], freq_cols[1], freq_cols[2]
f1 = df_freqs[f1_name]
f2 = df_freqs[f2_name]
f3 = df_freqs[f3_name]

print(f"Detected frequency columns: {f1_name}, {f2_name}, {f3_name}")

# Define requested plot pairs: (X-data, Y-data, X-label, Y-label)
# - F_2 over F_1  ->  X = F_1, Y = F_2
# - F_3 over F_1  ->  X = F_1, Y = F_3
# - F_3 over F_2  ->  X = F_2, Y = F_3
plots = [
    (f1, f2, f1_name, f2_name),  # F_2 vs F_1
    (f1, f3, f1_name, f3_name),  # F_3 vs F_1
    (f2, f3, f2_name, f3_name),  # F_3 vs F_2
]

# 4. Create subplot grid (1 row, 3 columns)
fig, axes = plt.subplots(nrows=1, ncols=3, figsize=(15, 5))

scatter_plots = []

# 5. Plot eigenfrequencies against each other
for ax, (x_data, y_data, x_label, y_label) in zip(axes, plots):
    sc = ax.scatter(x_data, y_data, alpha=0.7, edgecolors="none")
    ax.grid(True, linestyle="--", alpha=0.5)
    ax.set_xlabel(str(x_label), fontsize=10)
    ax.set_ylabel(str(y_label), fontsize=10)
    ax.set_title(f"{y_label} vs. {x_label}", fontsize=11)
    scatter_plots.append(sc)

# 6. Add interactive hover annotations with design variables from sampling_xdhis.csv
cursor = mplcursors.cursor(scatter_plots, hover=True)


@cursor.connect("add")
def on_add(sel):
    sample_idx = sel.index
    x_val, y_val = sel.target
    x_name = sel.artist.axes.get_xlabel()
    y_name = sel.artist.axes.get_ylabel()

    # Retrieve design variables for current sample index
    design_row = df_design.iloc[sample_idx]
    design_str_list = []
    for col_name, val in design_row.items():
        if isinstance(val, (int, float)):
            design_str_list.append(f"  {col_name}: {val:.4g}")
        else:
            design_str_list.append(f"  {col_name}: {val}")

    design_text = "\n".join(design_str_list)

    # Build annotation popup text
    annotation_text = (
        f"--- Frequencies ---\n"
        f"{x_name}: {x_val:.4f}\n"
        f"{y_name}: {y_val:.4f}\n"
        f"--- Design Variables ---\n"
        f"{design_text}"
    )

    sel.annotation.set_text(annotation_text)
    sel.annotation.get_bbox_patch().set(fc="white", alpha=0.9)


plt.suptitle("Eigenfrequencies Scatter Plots with Design Variables", fontsize=14)
plt.tight_layout()

# Save figure and display
plt.savefig("eigenfrequencies_scatter_correct.png", dpi=300)
print("Plot saved as 'eigenfrequencies_scatter_correct.png'")
plt.show()
