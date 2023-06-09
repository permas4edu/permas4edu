### intespad

 * Enhanced text editor  
 * Syntax Highlighting  
 * Direct link to the manual via the F1 key
 * Convenient jumping to specific messages
 * Show and Hide (all) DAT contents
 * Many shortcuts, e.g. function keys F4, F5, F6 to name a few

![intespad](/assets/intespad.png "intespad")

### permasgraph
#### Supported file formats

 * .hdf
 * .post .post.gz
 * .csv
 * .xy PERMAS xy gnuplot files
 * .x I-DEAS, MEDINA, Patran xy-data
 
![permasgraph](/assets/permasgraph.png "permasgraph")

### pyINTES Enhanced Python Interpreter

| Module | Version |
|----    | ----    |
| bokeh | 2.4.2 |
| h5py   | 3.6.0 |  
| imageio | 2.9.0 |
| matplotlib | 3.5.1 |
| meshio | 5.3.4 |  
| mplcursors | 0.5.1 |  
| mpld3 | 0.5.7 | 
| mpmath | 1.2.1 |  
| numpy  | 1.22.3  |
| numpy-stl | 2.17.1 |  
| OCC | 7.4.1-dev |  
| openpyxl | 3.0.9 |  
| pandas | 1.4.2   |
| PIL    | 9.0.1   |
| plotly | 5.6.0 |  
| pyDOE2 | 1.3.0 | 
| python-docx | 0.8.11 |
| python-pptx | 0.6.21 |
| pywt | 1.3.0 |  
| scikit-image | 0.19.2 |  
| scikit-learn | 1.0.2 |  
| scipy  | 1.7.3   |
| seaborn | 0.11.2 |
| smt | 1.1.0 |  
| sympy | 1.10.1 | 
| tables | 3.6.1 |  
| vitables | 3.0.2 |  
| xlsxwriter | 3.0.3 |

### Miscellaneous

#### pack_permas_job

![pack_permas_job](/assets/pack_permas_job.png "pack_permas_job")

#### pygmentize

##### Examples for Linux Users

```bash
pygmentize -f png -O style=permas -l dat -o test_dat.png test.dat
pygmentize -f png -O style=permas -l uci -o test_uci.png test.uci
pygmentize -f png -O style=permas,line_numbers=False -l uci -o test_uci_no_line_numbers.png test.uci
pygmentize -f svg -O style=fruity -l bash -o test_sh.svg test.sh
```

##### Example for Windows Users

![pygmentize-script](pygmentize-script.png "pygmentize-script")  

![pygmentize](/assets/pygmentize.png "pygmentize")  

### Other CAD formats

IGES format (.igs/.iges) is currently not supported by VisPER. However, you might use Open CASCADE to convert .iges to .step.

```bash
pyINTES iges2step.py <your_geometry.igs> 
```
