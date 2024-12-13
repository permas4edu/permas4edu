import numpy as np
import matplotlib as mpl
import matplotlib.pyplot as plt

def f(x):
    c = 0.025
    u = 0.030
    m = 0.320
    return 70E+9*(1-c*np.exp(-0.5*((x-m)/u)**2)/(u*np.sqrt(2*np.pi)))
n=100 # number of finite elements
x=np.linspace(0.+0.7/n/2,0.7-0.7/n/2,n)
print (x)
print (f(x))
fig = plt.figure('Non-uniform elastic modulus')
ax = fig.add_subplot(111)
ax.plot(x,f(x))
ax.grid()
ax.set_xlabel(r'$x$-coordinate [m]')
ax.set_ylabel(r"Young's modulus $E$ [N/m$^2$]")
plt.savefig('non_uniform_elastic_modulus',dpi=80)
ofile = open('teloli_materials.dat','w')
ofile.write('$ENTER MATERIAL\n')
for i in range(n):
    ofile.write('$MATERIAL NAME = MAT_%i\n' %(i+1))
    ofile.write('    $ELASTIC GENERAL\n')
    ofile.write('       %.6E %.1f\n' %(f(x[i]),0.3))
    ofile.write('    $DENSITY\n')
    ofile.write('       2700.0\n')
    ofile.write('    $DAMPING\n')
    ofile.write('       0.01\n')
    ofile.write('$END MATERIAL\n')
ofile.write('$EXIT MATERIAL\n')
ofile.write('$FIN\n')
ofile.close()

 