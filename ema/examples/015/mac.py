#!/usr/bin/env pyINTES
import matplotlib as mpl
mpl.use("Agg")
import os, sys, re
import gzip
from scipy.io import mmwrite, savemat
import matplotlib.pylab as plt
import matplotlib.cm as cm
import numpy as np
from scipy.linalg import eig
from numpy.linalg import cond
import matplotlib.colors as colors
import matplotlib.cm as cmx
coolwarm = cm =  plt.get_cmap('coolwarm')
purd = cm =  plt.get_cmap('PuRd')
cNorm  = colors.Normalize(vmin=0, vmax=100.)
scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=coolwarm)
scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=purd)
import xlsxwriter

import matplotlib as mpl
label_size = 6
mpl.rcParams['xtick.labelsize'] = label_size
mpl.rcParams['ytick.labelsize'] = label_size

import warnings
warnings.simplefilter("ignore")
pmat = sys.argv[1]
res  = sys.argv[2]
#
# Nils Wagner
# nils.wagner@intes.de
# Visualisation of MAC matrices
#

def extract_frequencies_by_table(file_path):
    # Lists to store the extracted frequency values
    ema_frequencies = []
    fem_frequencies = []
    current_table = None

    # Regex to capture the first numerical value after the row index
    # Matches: [Whitespace][Digits][Whitespace][Capture Group: Float/Scientific]
    line_numeric = re.compile(r'^\s+\d+\s+([0-9.E+-]+)')
    # Matches: 
    line_databracket = re.compile(r'^ [=═]+')

    numdata = False
    index = -1
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            for line in file:
                # Identify the active table based on the technical descriptor
                if "Table M1R.DISP" in line:
                    current_table = "EMA"
                    numdata = True
                    index = -1  
                    continue
                elif "Table RVALTAB.DISP" in line:
                    current_table = "FEM"
                    numdata = True
                    index = -1
                    continue
                
                # if active data table
                if numdata:
                    # Check fpr begin of data 
                    dbracket = line_databracket.match(line)
                    if dbracket:
                        if (index == -1):
                            # Begin of data bracket
                            continue
                        else:
                            # End of data brackte
                            numdata = False
                            continue
                            
                    # Determine index of desired numerical field from header line
                    if (index == -1):
                        if "Frequency" in line:
                            list = line.split()
                            for i in range(len(list)):
                                if (list[i] == 'Frequency'):
                                    index = i
                        continue

                    if (index > 0): 
                        # Check if the line contains numerical data
                        match = line_numeric.match(line)
                        if match:
                            vals = line.split()
                            freq_value = float(vals[index])
                            #print (f'freq = {freq_value}')
                        
                            # Assign the frequency to the respective list
                            if current_table == "EMA":
                                ema_frequencies.append(freq_value)
                            elif current_table == "FEM":
                                fem_frequencies.append(freq_value)

    except FileNotFoundError:
        print(f"Error: The file '{file_path}' was not found.")
        return [], []

    return ema_frequencies, fem_frequencies

# --- Execution and Output ---
file_name = res
ema_data, fem_data = extract_frequencies_by_table(file_name)

print(f"Extraction complete for file: {file_name}")
print("-" * 60)
print(f"Table M1R.DISP (EMA):      {len(ema_data)} frequencies found.")
print(f"Table RVALTAB.DISP (FEM):  {len(fem_data)} frequencies found.")
print("-" * 60)

# Display the first few results as a sample
if ema_data:
    print(f"Sample EMA Frequencies: {ema_data[:3]}")  
if fem_data:
    print(f"Sample FEM Frequencies: {fem_data[:3]}") 

def extract_mac_matrix_indexed(file_path):
    # Initialize dictionary to store values by (row, col) coordinates
    mac_dict = {}
    capture_active = False
    max_row = 0
    max_col = 0
    
    # Matches the specific MAC section header
    header_pattern = re.compile(r'\$DATAOBJECT\s+BOOK\s+NAME\s*=\s*MAC')
    
    # Matches: RowIndex, ColIndex : Value (handling both '.' and ',' as decimals)
    # Group 1: Row, Group 2: Col, Group 3: Value
    data_pattern = re.compile(r'^\s*(\d+)\s*,\s*(\d+)\s*:\s*([0-9.,E+-]+)')

    print(f"Reading file: {file_path}")
    
    try:
        with open(file_path, 'r', encoding='utf-8') as file:
            for line in file:
                # 1. Start capturing when entering the MAC block
                if header_pattern.search(line):
                    capture_active = True
                    print("Section '$DATAOBJECT BOOK NAME = MAC' detected.")
                    continue
                
                # 2. Stop capturing if a new $DATAOBJECT starts
                if capture_active and line.startswith('$') and not header_pattern.search(line):
                    break
                
                if capture_active:
                    match = data_pattern.match(line)
                    if match:
                        # Extract indices and value
                        r = int(match.group(1))
                        c = int(match.group(2))
                        # Normalize decimal separator and convert to float
                        val = float(match.group(3).replace(',', '.'))
                        
                        mac_dict[(r, c)] = val
                        
                        # Track dimensions for matrix reconstruction
                        max_row = max(max_row, r)
                        max_col = max(max_col, c)

        if not mac_dict:
            print("No valid MAC data points found.")
            return None

        # 3. Reconstruct into a dense NumPy array
        # Note: We assume indices are 1-based, so we create a (max_row x max_col) matrix
        mac_matrix = np.zeros((max_row, max_col))
        for (r, c), val in mac_dict.items():
            mac_matrix[r-1, c-1] = val

        return mac_matrix

    except FileNotFoundError:
        print(f"Error: File '{file_path}' not found.")
        return None

# --- Execution ---
file_name = pmat
mac_matrix = extract_mac_matrix_indexed(file_name)
if mac_matrix is not None:
    print("-" * 60)
    print(f"MAC Matrix successfully loaded.")
    print(f"Dimensions: {mac_matrix.shape[0]} rows x {mac_matrix.shape[1]} columns")
    print("-" * 60)
    #print("Preview of first 2 rows:")
    #print(mac_matrix[:2])
try:
    mmwrite('MAC',mac_matrix)
    savemat('MAC.mat',mdict={'MAC': mac_matrix},format='5')
except:
    pass

n_ema = len(ema_data)
n_sim = len(fem_data)
fig2 = plt.figure('Modal assurance criteria II')
ax1  = fig2.add_subplot(111)
ax1.set_title('MAC matrix')
mesh1 = ax1.matshow(mac_matrix,aspect='equal',origin='lower',cmap=cmx.get_cmap('jet'),vmin=0.0, vmax=1.0)
ax1.set_xticks(np.arange(0,n_ema,1))
ax1.set_yticks(np.arange(0,n_sim,1))
ax1.set_xticks(np.arange(-0.5,n_ema,1),minor=True)
ax1.set_yticks(np.arange(-0.5,n_sim,1),minor=True)
ax1.set_xticklabels(np.arange(1,n_ema+1,1))
ax1.set_yticklabels(np.arange(1,n_sim+1,1))
ax1.set_ylabel('Simulation')
ax1.set_xlabel('Experiment')
ax1.grid(which='minor',color='w', linestyle='-',linewidth=1)

plt.colorbar(mesh1,ax=ax1)
plt.tight_layout()
plt.savefig('mac',dpi=200)

workbook =   xlsxwriter.Workbook(os.path.join(os.path.dirname(pmat),'mac.xlsx'))
worksheet = workbook.add_worksheet('MAC.DISP')
workbook.set_properties({
'title':    'Modal Assurance Criterion',
'subject':  'PERMAS',
'author':   '',
'manager':  '',
'company':  '',
'category': 'Example spreadsheet',
'keywords': 'PERMAS, Experimental Modal Analysis',
'comments': 'Created with Python and XlsxWriter',
'status':   'New',
})
# Add a format. Light red fill with dark red text.
format1 = workbook.add_format({'bg_color': '#FFC7CE',
                               'font_color': '#9C0006'})
# Add a format. Green fill with dark green text.
format2 = workbook.add_format({'bg_color': '#C6EFCE',
                               'font_color': '#006100'})
# Add a format. Turquoise fill with dark blue text.
format3 = workbook.add_format({'bg_color': '#CCFFFF',
                               'font_color': '#0000FF'})
p,q = mac_matrix.shape
worksheet.write_column(1,0,fem_data)
worksheet.write_row(0,1,ema_data)

#MAC_dense = MAC.toarray()
for i in range(q):
    worksheet.write_column(1,i+1,mac_matrix[:,i])
# Rule 1: High correlation (>= 0.8)
worksheet.conditional_format(1,1,p+1,q+1,{'type': 'cell',
                                          'criteria': '>=',
                                          'value':0.8,
                                          'format':format1})
# Rule 2: Medium correlation (between 0.5 and 0.8)
worksheet.conditional_format(1, 1, p+1, q+1, {'type': 'cell', 
                                              'criteria': 'between', 
                                              'minimum': 0.5, 
                                              'maximum': 0.8, 
                                              'format': format2})

worksheet.insert_image('D30','mac.png' , {'x_scale': 1.0, 'y_scale': 1.0})
worksheet.set_column('A:Q', 12)
worksheet.freeze_panes(1,1)
workbook.close()
