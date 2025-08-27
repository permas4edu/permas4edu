import pandas as pd
import numpy as np
from pathlib import Path
data_dir = Path('.')
elements_path = data_dir / 'elements.csv'
nodes_path = data_dir / 'nodes.csv'
try:
    df_elements = pd.read_csv(elements_path,delimiter=';')
    df_nodes = pd.read_csv(nodes_path,delimiter=';')
except FileNotFoundError:
    print ("The files 'elements.csv' or 'nodes.csv' were not found")
    exit()
x = df_nodes[df_nodes.keys()[1]]
y = df_nodes[df_nodes.keys()[2]]
z = df_nodes[df_nodes.keys()[3]]
m,n = df_elements.shape
p,q = df_nodes.shape
eids = df_elements['Label']
n1 = df_elements[df_elements.keys()[4]]
n2 = df_elements[df_elements.keys()[5]]
output_path = data_dir / 'parabolic_elsys.dat'
with open(output_path, 'w') as ofile:
    ofile.write('$ENTER COMPONENT NAME = DFLT_COMP\n')
    ofile.write('    $STRUCTURE\n')
    for i in range(len(eids)):
        ofile.write('        $RSYS FORM = ZX\n')
        ofile.write('         %3i %8i : %8i : %.6e %.6e %.6e\n' %(eids[i],n1[i],n2[i],x[i],y[i],z[i]+10.))
    for i in range(len(eids)):
        ofile.write('        $ELSYS RSYS\n')
        ofile.write('           %8i RSYS = %3i\n' %(eids[i],i+1))
    ofile.write('    $END STRUCTURE\n')
    ofile.write('$EXIT COMPONENT\n')
    ofile.write('$FIN\n')
print (f"File '{output_path}' was succesfully created.")
