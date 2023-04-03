import numpy as np
import matplotlib as mpl
import os
mpl.rcParams['savefig.directory'] = os.getcwd()
import matplotlib.pyplot as plt
F = 600.0
L = 20.
b = 2.0
#h = 8.0
E = 68000.0
nu = 0.36

data = np.loadtxt('euler_bernoulli_sampling_xdhis.csv',delimiter=';',skiprows=1)
data1 = np.loadtxt('euler_bernoulli_sampling_srhis.csv',delimiter=';',skiprows=1)
data2 = np.loadtxt('timoshenko_sampling_srhis.csv',delimiter=';',skiprows=1)
h = data[:,1]
y_pre = 4*F*L**3/(E*b*h**3)

y_test = 4*F*L**3/(E*b*h**3) + F*L*(4+5*nu)/(2*E*b*h)

fig = plt.figure('Deflection')
ax = fig.add_subplot(111)
ax.plot(h,y_pre,label='Euler-Bernoulli')
ax.plot(h,y_test,label='Timoshenko')
ax.plot(data1[:,0],data1[:,1],'o',label='PERMAS BECOS')
ax.plot(data2[:,0],data2[:,1],'o',label='PERMAS BEAM2')
ax.set_xlabel('Height $h$ [mm]')
ax.set_ylabel('Displacement $v(h)$ [mm]')
ax.grid()
ax.legend(shadow=True).set_draggable(True)
plt.savefig('comparison')
#plt.show()
