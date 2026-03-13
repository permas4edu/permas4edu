import subprocess
import re
import platform
import shutil
import sys

def get_system_info():
    # Check if the system is Linux
    if platform.system() != "Linux":
        print("--- System Information Report ---")
        print("Error: This report is only supported on Linux systems.")
        return

    print("--- System Information Report ---")

    # 1. Get GCC Version
    try:
        gcc_raw = subprocess.check_output(["gcc", "--version"]).decode("utf-8")
        gcc_match = re.search(r'(\d+\.\d+\.\d+)', gcc_raw)
        gcc_version = gcc_match.group(1) if gcc_match else "Unknown"
        print(f"GCC Version: {gcc_version}")
    except (FileNotFoundError, subprocess.CalledProcessError):
        print("GCC Version: GCC not found or failed to execute.")

    # 2. Get Linux Distribution
    try:
        # freedesktop_os_release is specific to Unix-like systems
        dist_info = platform.freedesktop_os_release()
        dist_name = dist_info.get("PRETTY_NAME", "Unknown Linux")
        dist_id = dist_info.get("ID", "unknown")
        print(f"Distribution: {dist_name} (ID: {dist_id})")
    except (AttributeError, OSError):
        print(f"Distribution: {platform.system()} {platform.release()}")

    # 3. Get CPU Features (AVX and SSE)
    try:
        with open("/proc/cpuinfo", "r") as f:
            for line in f:
                if line.startswith("flags"):
                    flags = line.split(":")[1].strip().lower().split()
                    
                    avx_features = [f.upper() for f in flags if "avx" in f]
                    
                    sse_map = {"pni": "SSE3", "sse4_1": "SSE4.1", "sse4_2": "SSE4.2"}
                    sse_features = []
                    for f in flags:
                        if "sse" in f:
                            clean_name = sse_map.get(f, f.upper())
                            sse_features.append(clean_name)
                        elif f == "pni":
                            sse_features.append("SSE3")

                    avx_features = sorted(list(set(avx_features)))
                    sse_features = sorted(list(set(sse_features)))

                    print(f"AVX Features: {', '.join(avx_features) if avx_features else 'None'}")
                    print(f"SSE Features: {', '.join(sse_features) if sse_features else 'None'}")
                    break 
    except FileNotFoundError:
        print("CPU Features: Could not read /proc/cpuinfo.")

def identify_fortran_compiler():
    # This part is generally safer, but still technically for Linux/Unix tools
    if platform.system() != "Linux":
        print("--- Searching for Fortran Compilers ---")
        print("Skipping: Fortran compiler search is optimized for Linux environments.")
        return

    compilers_to_check = ['gfortran', 'ifx', 'ifort', 'flang']
    print("--- Searching for Fortran Compilers ---")
    
    found_any = False
    for cmd in compilers_to_check:
        path = shutil.which(cmd)
        if path:
            found_any = True
            try:
                output = subprocess.check_output([cmd, "--version"], stderr=subprocess.STDOUT).decode("utf-8")
                first_line = output.splitlines()[0]
                
                print(f"Command: {cmd}")
                print(f"Path:    {path}")
                
                if "GNU Fortran" in first_line:
                    print(f"Vendor:  GNU (gfortran)")
                elif "Intel" in first_line:
                    print(f"Vendor:  Intel (LLVM-based ifx or Classic ifort)")
                elif "flang" in first_line.lower():
                    print(f"Vendor:  LLVM Flang")
                else:
                    print(f"Vendor:  Unknown")
                print(f"Details: {first_line}\n")
                
            except (subprocess.CalledProcessError, PermissionError):
                print(f"Command {cmd} found at {path}, but failed to execute.\n")
    
    if not found_any:
        print("No common Fortran compilers found in PATH.")

if __name__ == "__main__":
    # Check at the very beginning to prevent any execution on Windows
    if platform.system() == "Windows":
        print("Notice: This script is designed for Linux systems and may not work correctly on Windows.")
        # Optional: sys.exit() if you want to stop immediately
    
    get_system_info()
    identify_fortran_compiler()