import h5py
import numpy as np
import os, sys
import re
import matplotlib.pyplot as plt
import glob
from mpl_toolkits.mplot3d import Axes3D
import matplotlib.colors as colors
import matplotlib.cm as cmx
import matplotlib as mpl
from matplotlib import ticker
os.environ['HDF5_USE_FILE_LOCKING'] = 'FALSE'
#
# Three-dimensional visualization of element densities of a topology optimzation
#
# TASK LOOPS = 100
# ...
# EXPORT
#     ITEM CLEAR
#     ITEM EFRATIO
#     GO PERMAS BINARY FILE = 'efratio_%.3(tloop)'
# TASK END
#
# USER 
#   CALL TOOL6 P1 = 'pyINTES efratio_hdf.py'
# RETURN 
#
# STOP
#

niceMathTextForm = ticker.ScalarFormatter(useMathText=True)
#
# Customization
#
mpl.rcParams['savefig.directory'] = os.getcwd()
mpl.rcParams['savefig.format'] = 'png'
mpl.rcParams['savefig.dpi'] = 100

coolwarm = cm =  plt.get_cmap('coolwarm')
values = range(50)
cNorm  = colors.Normalize(vmin=0, vmax=values[-1])
scalarMap = cmx.ScalarMappable(norm=cNorm, cmap=coolwarm)
colours = []
for value in values:
    colorVal = scalarMap.to_rgba(value)
    colours.append(colorVal)
    

def print_hdf5_item_structure(g, z, offset='    ') :
    """Prints the input file/group/dataset (g) name and begin iterations on its content"""
    if   isinstance(g,h5py.File) :
        pass
    elif isinstance(g,h5py.Dataset) :
        if re.search('Column1',g.name):
            efratio = g[:,0]
            ind = np.argsort(efratio)
            efratio = efratio[ind]
            hist,bin_edges = np.histogram(efratio,bins=50,range=(0.,1.),density=False)
            width = 0.7*(bin_edges[1]-bin_edges[0])
            center = (bin_edges[:-1]+bin_edges[1:])/2
            heatmap = ax.bar(center, hist, zs=z, zdir='y', align = 'center', width = width,color=colours)
        if re.search('RowDes',g.name):
            element_ids = g.fillvalue
    elif isinstance(g,h5py.Group) :
        pass
    else :
        print ('WARNING: UNKNOWN ITEM IN HDF5 FILE', g.name)
        sys.exit ( "EXECUTION IS TERMINATED" )
        
    if isinstance(g, h5py.File) or isinstance(g, h5py.Group) :
        for key,val in dict(g).items() :
            subg = val
            #print offset, key, #,"   ", subg.name #, val, subg.len(), type(subg),
            print_hdf5_item_structure(subg, z, offset + '    ')

file_names = glob.glob('efratio_*.hdf') # Adapt naming convention here if necessary
file_names.sort()
z = 0
fig = plt.figure('PERMAS Topology Optimization')
ax  = fig.add_subplot(111,projection='3d')

for file_name in file_names:
    print ('Processing %s' %file_name)
    file = h5py.File(file_name, 'r') # open read-only
    item = file
    z += 1
    print_hdf5_item_structure(item,z)
    file.close()
    
ax.set_xlabel('Element filling ratio',fontsize=8)
ax.set_ylabel('Iteration',fontsize=8)
ax.set_zlabel('Number of elements',fontsize=8)
ax.set_xlim(0.,1.01)
ax.set_yticks(np.arange(0,z+1,10))
ax.grid('on')
ax.zaxis._axinfo['label']['space_factor'] = 10.0
ax.ticklabel_format(axis="z", style="sci", scilimits=(0,0))
scalarMap.set_array(colours)
scalarMap.autoscale()
cbar = plt.colorbar(scalarMap,ax=ax)
plt.tight_layout()
plt.show()
