import numpy as np
di=0.01
do=0.039
m1=0.67
m2=0.5
rho=7.8E3
t1=4*m1/(rho*np.pi*(do**2-di**2))
t2=4*m2/(rho*np.pi*(do**2-di**2))
print ('t1=',t1)
print ('t2=',t2)
