import json
import numpy as np
ofile = open('warren.dat','w')
ofile.write('$ENTER COMPONENT NAME = DFLT_COMP\n')
ofile.write('$STRUCTURE\n')
try:
    with open('warren2d.json', 'r') as file:
        data = json.load(file)
        x=data['x']
        y=data['y']
        z=data['z']
        n_nodes = len(data['x'])
        nids = np.arange(1,n_nodes+1).astype(int)
        ofile.write('$NODE NSET = ALL_NODES\n')
        np.savetxt(ofile,np.c_[nids,x,y,z],fmt='%8i %.8e %8e %8e')
        nid1 = np.array(data['istart']).astype(int)+1
        nid2 = np.array(data['iend']).astype(int)+1
        n_ele = len(nid1)
        eids = np.arange(1,n_ele+1).astype(int) 
        ofile.write('$ELEMENT TYPE = FLA2 ESET = TRUSS\n')
        np.savetxt(ofile,np.c_[eids,nid1,nid2],fmt='%8i %8i %8i')
except FileNotFoundError:
    print("Error: warren2d.json not found.")
except json.JSONDecodeError:
    print("Error: Could not decode JSON from warren2d.json. Check file format.")
ofile.write('$END STRUCTURE\n')
ofile.write('$EXIT COMPONENT\n')
ofile.write('$FIN\n')
ofile.close()
