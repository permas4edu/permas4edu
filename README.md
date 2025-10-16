## PERMAS4EDU
### Goal 
PERMAS4EDU (https://www.intes.de/edu) has essentially the same functionality as the commercial version of PERMAS. However, some limitations are introduced in the educational edition to prevent commercial usage. It is based on version 20 and available on Windows 10/11 and Linux, respectively. Therefore it is well suited for self-study and further training. Previously, the repository was just a mirror of the former Researchgate project PERMAS4EDU. 
For all new examples (as of April 4th 2023) we would like to use the [module names](#modules) from PERMAS to improve the directory structure.

### Methods 
Python, Computer-Aided Engineering, Structural Dynamics, High Performance Computing, Finite Elements, Laminated Composites, Modal Analysis, Contact Mechanics, Vibroacoustics, Nonlinear Vibration, Harmonic Balance Method, Buckling, Topology Optimization, Shape Optimization, Sampling, DOE, Rotor dynamics, Mesh Generation, Fatigue analysis, PERMAS, VisPER

### Installation

git clone https://github.com/permas4edu/permas4edu.git  
cd permas4edu  
Open index.html with your favourite browser to access the former examples from the Researchgate project.   

### Feedback 

$$\textrm{\color{blue}{If permas4edu helped you, please consider adding a star here on GitHub. This means a lot to the author.}}$$

### Replication of results

Install the free education edition of PERMAS https://www.intes.de/k_permas/overview/academic_license

### PERMAS Control Center

Launch PERMAS Control Center  

![PERMAS Control Center](/assets/permascc_edu.png "PERMAS Control Center V20")

#### References

[Replication of results](https://link.springer.com/article/10.1007/s00158-019-02298-4)  
[Making Scientific Computations Reproducible](https://doi.ieeecomputersociety.org/10.1109/5992.881708)  
[Reproducible Research in Computational Science](https://doi.org/10.1126/science.1213847)  
[Challenges and Techniques for Reproducible Simulations](https://doi.org/10.1109/MCSE.2023.3322127)

### VisPER aka Visual PERMAS 

![VisPER](/assets/visper_edu.png "VisPER")

### Modules 

|Name| Description             |
---  | ----------------------- |  
|[BA](ba/README.md)  | Buckling analysis       |  
|[CA](ca/README.md)  | Contact analysis        | 
|[DEV](dev/README.md) | Dynamic eigenvalue analysis |  
|[DEVX](devx/README.md)| Extended dynamic eigenvalue analysis |  
|[DRA](dra/README.md) | Dynamic response analysis |  
|DRX | Extended dynamic response analysis |
|[EMA](ema/README.md) | Experimental Modal Analysis |
|EMD | Electro dynamics        |
|EMS | Static electromagnetics |  
|[FS](fs/README.md)  | Fluid-Structure analysis|  
|[HBM](hbm/README.md) | Harmonic Balance Method | 
|[HT](ht/README.md)  | Heat Transfer           |
|[LA](la/README.md)  | Laminate analysis       |  
|LIFE| Fatigue Analysis        |
|[LS](ls/README.md)  | Linear statics          | 
|MBS | Interfacing with Multibody Systems |
|NLD | Nonlinear dynamics |
|[NLS](nls/README.md) | Nonlinear analysis |
|[OPT](opt/README.md) | Optimization            |  
|RA  | Reliability analysis |
|[TOPO](topo/README.md)| Topology optimization   |  
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
| .zst       | zstd is a fast lossless compression algorithm (V20) |

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
