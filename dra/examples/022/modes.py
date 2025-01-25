import h5py
import glob
import re

file_names = glob.glob('mode_*.hdf')
file_names.sort()
u=[]
v=[]
w=[]
freq=[]
nid=[]
def print_hdf5_item_structure(g, z, offset='    '):
    if isinstance(g,h5py.File):
        pass
    elif isinstance(g, h5py.Dataset):
       if re.search('Column1',g.name):
           u.append(g[:,0])
           v.append(g[:,1])
           w.append(g[:,2])
           print (u,v,w)
       if re.search('RowDes',g.name):
           print (g[:])
           nid.append(g[:])
       if re.search('ColDes',g.name):
           freq.append(g[0])
           print ('Frequency',freq)
    elif isinstance(g,h5py.Group):
        pass
    else:
        print ('Warning: Unknown item in HDF5 file', g.name)
        sys.exit("Execution is terminated")
    if isinstance(g, h5py.File) or isinstance(g, h5py.Group):
        for key, val in dict(g).items():
            subg = val
            print_hdf5_item_structure(subg, z, offset + '    ') 
z=0
for file_name in file_names:
    file = h5py.File(file_name, 'r')
    item = file 
    z += 1
    print_hdf5_item_structure(item,z)
ofile = open('inival.dat','w')
ofile.write('$INIVAL DISP SOURCE = INPUT  DOFTYPE = DISP\n')
for i in range(nid[0].shape[0]):
    tmpu = 0.01*(u[0][i]+0.05*u[1][i])
    tmpv = 0.01*(v[0][i]+0.05*v[1][i])
    ofile.write('%i %e %e 0.0\n' %(nid[0][i],tmpu,tmpv))
ofile.close()
