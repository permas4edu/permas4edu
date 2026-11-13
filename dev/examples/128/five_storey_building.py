import re

def calculate_periods(filename="natural_frequencies.txt"):
    frequencies = []
    
    # Read the file and extract frequencies
    try:
        with open(filename, "r", encoding="utf-8") as file:
            for line in file:
                # Search for lines containing row number and scientific notation
                match = re.search(r'^\s*(\d+)\s+([0-9.E+-]+)', line)
                if match:
                    row = int(match.group(1))
                    freq = float(match.group(2))
                    frequencies.append((row, freq))
    except FileNotFoundError:
        print(f"Error: The file '{filename}' was not found.")
        return

    # Print the results in a formatted table
    print(f"{'Row':<6} | {'Frequency (Hz)':<15} | {'Period T_i (s)':<15}")
    print("-" * 44)

    for row, f in frequencies:
        if f != 0:
            T_i = 1.0 / f
        else:
            T_i = float('inf')
        
        print(f"{row:<6} | {f:<15.5E} | {T_i:<15.5E}")

if __name__ == "__main__":
    calculate_periods()