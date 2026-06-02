import h5py
import matplotlib.pyplot as plt
import mplcursors
import numpy as np
from matplotlib.collections import LineCollection


def plot_permas_line_collection(file_path, run_label):
    with h5py.File(file_path, "r") as f:
        if run_label == '1':
            base = "DFLT_COMP/STEP_1"
        if run_label == '2':
            base = "DFLT_COMP/STEP_2"

        try:
            # Load datasets
            time = f[f"{base}/XYDATA TYPE = DISP/.Abscissae"][:]
            disp = f[f"{base}/XYDATA TYPE = DISP/Curve1"][:]
            velo = f[f"{base}/XYDATA TYPE = VELO/Curve1"][:]
            acce = f[f"{base}/XYDATA TYPE = ACCE/Curve1"][:]

            # Extract metadata label
            label_raw = f[f"{base}/XYDATA TYPE = DISP/.Label"][0]
            label = (
                label_raw.decode("utf-8").strip()
                if hasattr(label_raw, "decode")
                else str(label_raw)
            )

        except KeyError as e:
            print(f"Error: Path not found in HDF5: {e}")
            return

    # --- Figure 1: Time Series Plots ---
    fig1, (ax1, ax2, ax3) = plt.subplots(3, 1, figsize=(10, 10), sharex=True)
    fig1.suptitle(f"Time Domain Analysis - Node: {label}", fontsize=14)

    ax1.plot(time, disp, color="tab:blue", label="Displacement")
    ax2.plot(time, velo, color="tab:green", label="Velocity")
    ax3.plot(time, acce, color="tab:red", label="Acceleration")

    # Add titles, labels, grids and cursors
    ax1.set_ylabel("Displacement")
    ax2.set_ylabel("Velocity")
    ax3.set_ylabel("Acceleration")
    ax3.set_xlabel("Time [s]")

    for ax in [ax1, ax2, ax3]:
        ax.grid(True)
        mplcursors.cursor(ax.lines, hover=True)

    plt.tight_layout()

    # Save Figure 1 with a unique name using the run_label
    fig1_filename = f"time_domain_{run_label}.png"
    fig1.savefig(fig1_filename, dpi=100)
    print(f"Saved: {fig1_filename}")

    # --- Figure 2: Phase Space Map with LineCollection ---
    fig2, ax4 = plt.subplots(figsize=(8, 6))

    # Reshape coordinates into segments (num_segments, 2_coordinates)
    points = np.array([disp, velo]).T.reshape(-1, 1, 2)
    segments = np.concatenate([points[:-1], points[1:]], axis=1)

    # Create the LineCollection with the 'coolwarm' colormap
    lc = LineCollection(segments, cmap="coolwarm", linewidths=2)
    # Set the values used for colormapping (time)
    lc.set_array(time)

    # Add collection to plot
    line = ax4.add_collection(lc)

    # LineCollection doesn't auto-scale the axis, so we do it manually
    ax4.set_xlim(disp.min() * 1.1, disp.max() * 1.1)
    ax4.set_ylim(velo.min() * 1.1, velo.max() * 1.1)

    # Add colorbar
    cbar = fig2.colorbar(line, ax=ax4)
    cbar.set_label("Time Progression [s]")

    # Markers for orientation
    ax4.plot(disp[0], velo[0], "go", label="Start")
    ax4.plot(disp[-1], velo[-1], "rx", label="End")

    ax4.set_title(
        f"Phase Space: Gradient Line (coolwarm)\nNode: {label}", fontsize=12
    )
    ax4.set_xlabel("Displacement")
    ax4.set_ylabel("Velocity")
    ax4.grid(True)

    plt.tight_layout()

    # Save Figure 2 with a unique name using the run_label
    fig2_filename = f"phase_space_{run_label}.png"
    fig2.savefig(fig2_filename, dpi=100)
    print(f"Saved: {fig2_filename}")

    # Close figures to clear memory
    plt.close(fig1)
    plt.close(fig2)


# --- Example Usage ---
if __name__ == "__main__":
    # First call with custom suffix
    plot_permas_line_collection("response_1.hdf", run_label="1")

    # Second call with a different suffix (prevents overwriting)
    plot_permas_line_collection("response_2.hdf", run_label="2")
