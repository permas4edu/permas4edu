## PERMAS4EDU
### Goal 
PERMAS4EDU (https://www.intes.de/edu) has essentially the same functionality as the commercial version of PERMAS. However, some limitations are introduced in the educational edition to prevent commercial usage. It is based on version 19 and available on Windows 10/11 and Linux, respectively. Therefore it is well suited for self-study and further training. Currently, the repository is just a mirror of the former Researchgate project PERMAS4EDU. For all new examples (as of April 4th 2023) we would like to use the [module names](#modules) from PERMAS to improve the directory structure.

### Methods 
Python, Computer-Aided Engineering, Structural Dynamics, High Performance Computing, Finite Elements, Laminated Composites, Modal Analysis, Contact Mechanics, Vibroacoustics, Nonlinear Vibration, Harmonic Balance Method, Buckling, Topology Optimization, Shape Optimization, Sampling, DOE, Rotor dynamics, Mesh Generation, PERMAS, VisPER

### Installation

git clone https://github.com/permas4edu/permas4edu.git  
cd permas4edu  
Open index.html with your favourite browser  

### Replication of results

Install the free education edition of PERMAS.  
Launch PERMAS Control Center  

![PERMAS Control Center](/assets/permascc_edu.png "PERMAS Control Center")

#### References

[Replication of results](https://link.springer.com/article/10.1007/s00158-019-02298-4)  
[Making Scientific Computations Reproducible](https://doi.ieeecomputersociety.org/10.1109/5992.881708)  
[Reproducible Research in Computational Science](https://doi.org/10.1126/science.1213847)  

### VisPER aka Visual PERMAS 

![VisPER](/assets/visper_permascc.png "Launch VisPER via Permas Control Center")

![VisPER](/assets/visper_edu.png "VisPER")

### Modules 

|Name| Description             |
---  | ----------------------- |  
|BA  | Buckling analysis       |  
|CA  | Contact analysis        | 
|DEV | Dynamic eigenvalue analysis |  
|DEVX| Extended dynamic eigenvalue analysis |  
|DRA | Dynamic response analysis |  
|DRX | Extended dynamic response analysis |
|EMA | Experimental Modal Analysis |
|EMD | Electro dynamics        |
|EMS | Static electromagnetics |  
|FS  | Fluid-Structure analysis|  
|HBM | Harmonic Balance Method | 
|HT  | Heat Transfer           |
|LA  | Laminate analysis       |  
|LIFE| Fatigue Analysis        |
|LS  | Linear statics          | 
|MBS | Interfacing with Multibody Systems |
|NLD | Nonlinear dynamics |
|NLS | Nonlinear analysis |
|OPT | Optimization            |  
|RA  | Reliability analysis |
|TOPO| Topology optimization   |  
|coupl/emht | Electrodynamic thermal coupling |  
|coupl/emls | Electrodynamic mechanical coupling |  
|coupl/htls | Thermal mechanical coupling |  
|coupl/htnls| Thermal mechanical coupling |

### Important File extensions

| Extension | Description |  
| ---       | ----        |  
| .csv      | Spreadsheet |  
| .dat      | PERMAS model data |  
| .hdf      | hdf5 model and result data |
| .log      | PERMAS log file |  
| .res      | PERMAS Result file |
| .post .post.gz | PERMAS model and result data ASCII |  
| .pro      | PERMAS Protocol file |
| .stl      | Stereolithrography ASCII and binary |
| .step .stp | STEP file CAD |  

### Interfaces

| Extension | Description |
| ---       | ----        |
| .bif .bof | Medina binary input/output file |
| .cdb      | Ansys model data ASCII |
| .inp      | Abaqus model data ASCII |
| .bdf .nas | NASTRAN model data ASCII |
| .unv .uff | Universal File format |

### Export formats

| Extension | Description |  
| ----      | ----        |  
| .bif .bof | Medina      |    
| .h3d      | Hyperview   |  
| .op2      | Nastran     |  
