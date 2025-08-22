import pandas as pd
import numpy as np
df = pd.read_csv('hui.csv',delimiter=';')
n1 = df[df.keys()[0]]
n2 = df[df.keys()[2]]
ofile = open('hui_spring.dat','w')
offset = 5000 # max element id
ofile.write('$ENTER COMPONENT NAME = DFLT_COMP\n')
ofile.write('    $STRUCTURE\n')
ofile.write('!\n')
ofile.write('        $ELEMENT TYPE = SPRING6 ESET = K\n')
for i,N in enumerate(n1):
    ofile.write('    %8i %8i %8i\n' %(offset+1+i,n1[i],n2[i]))
ofile.write('!\n')
ofile.write('    $END STRUCTURE\n')
ofile.write('!\n')
ofile.write('    $SYSTEM NAME = S_STEP_1\n')
ofile.write('!\n')
ofile.write('        $GEODAT SPRING CONT = STIFF\n')
ofile.write('           GD_K 1.E4 1.E4 1.E4 1.E8 1.E8 1.E8\n')
ofile.write('!\n')
ofile.write('        $ELPROP\n')
ofile.write('            K GEODAT = GD_K\n')        
ofile.write('    $END SYSTEM\n')
ofile.write('!\n')
ofile.write('$EXIT COMPONENT\n')
ofile.write('$FIN\n')
ofile.close()
