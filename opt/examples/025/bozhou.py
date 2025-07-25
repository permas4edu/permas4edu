import numpy as np
import random
num_nodes = 101               # Number of nodes
num_elements = num_nodes - 1  # Number of elements
N_rollers = 5                 # Number of additional roller supports
M_forces = 5                  # Number of point forces
L_min = 15                    # min distance between rollers (m)
max_force = -355857           # Max point load (N)  
uniform_udl = -5000      
roller_nodes = []
available_nodes = [n for n in range(2, num_nodes) if n != num_nodes]  # List of nodes to choose from
# Start by selecting the first roller node
first_roller_node = random.choice(available_nodes)
roller_nodes.append(first_roller_node)
available_nodes.remove(first_roller_node)
# Now iteratively select the remaining roller nodes
for _ in range(1, N_rollers):
    valid_choice = False
    while not valid_choice:
        # Randomly pick a new roller node
        new_roller_node = random.choice(available_nodes)
        
        # Check that the distance to all existing roller nodes is >= L_min
        if all(abs(new_roller_node - existing_node) >= L_min for existing_node in roller_nodes):
            roller_nodes.append(new_roller_node)
            available_nodes.remove(new_roller_node)
            valid_choice = True
print ('Roller nodes',roller_nodes)
force_nodes = [n for n in range(2, num_nodes) if n not in roller_nodes and n != 1]
force_nodes = random.sample(force_nodes, min(M_forces, len(force_nodes)))
force_values = [random.uniform(0.5 * max_force, max_force) for _ in force_nodes]
print ('Force nodes',force_nodes)
print ('Force values',force_values)
ofile = open('bozhou_add.dat','w')
ofile.write('$ENTER COMPONENT NAME = DFLT_COMP DOFTYPE = DISP MATH\n')
ofile.write('    $STRUCTURE\n')
ofile.write('        $NSET NAME = ROLLER_NODES\n')
for i in roller_nodes:
    ofile.write('         %i\n' %i)
ofile.write('    $END STRUCTURE\n')
ofile.write('    $CONSTRAINTS NAME = C_STEP_1\n')
ofile.write('        $SUPPRESS DOFS = 2\n')
ofile.write('            ROLLER_NODES \n')
ofile.write('    $END CONSTRAINTS\n')

ofile.write('    $LOADING NAME = L_STEP_1\n')
for i, node in enumerate(force_nodes):
    ofile.write('        $CONLOAD LPAT = %i\n' %(i+1))
    ofile.write('            %i 2: %.6e\n' %(force_nodes[i],force_values[i]))
ofile.write('    $END LOADING\n')
ofile.write('$EXIT COMPONENT\n')
ofile.write('$FIN\n')
ofile.close()

