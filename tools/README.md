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

| Module | Version V19 | Version V20 |
|----    | ----    | ---- |
| bokeh | 2.4.2 | 3.5.2 |
| contourpy |  | 1.2.1 |
| cython | N/A | 3.0.11 |
| derivative | N/A | 0.6.2 |
| hdf5view | N/A | 0.1.1 |
| h5py   | 3.6.0 | 3.11.0 |
| imageio | 2.9.0 | 2.35.1 |
| matplotlib | 3.5.1 | 3.9.2  |
| meshio | 5.3.4 | 5.3.5 |
| mplcursors | 0.5.1 | 0.5.3 |  
| mpld3 | 0.5.7 | 0.5.10 |
| mpmath | 1.2.1 | 1.3.0 | 
| numpy  | 1.22.3  | 1.26.4 |
| numpy-stl | 2.17.1 | 3.1.2 |  
| OCC | 7.4.1-dev | 7.8.1  |
| openpyxl | 3.0.9 | 3.1.5 |
| pandas | 1.4.2   | 2.2.2 |
| PIL    | 9.0.1   | 10.4.0 |
| pip    |     | 24.2 |
| plotly | 5.6.0 |  5.23.0 |
| psutil | | 6.0.0 |
| pyDOE2 | 1.3.0 | N/A  |
| pyDOE3 | N/A   | 1.0.4  |
| pygments | | 2.18.0  |
| PySide6 | | 6.5.3 |
| pytest | | 8.3.2 |
| python-docx | 0.8.11 | 1.1.2 |
| python-pptx | 0.6.21 | 1.0.2  |
| pywt | 1.3.0 | 1.7.0  |
| requests |  | 2.32.3  |
| scikit-image | 0.19.2 | 0.24.0  |  
| scikit-learn | 1.0.2 | 1.5.1 |
| scipy  | 1.7.3   |  1.14.1|
| seaborn | 0.11.2 |  0.13.2 |
| smt | 1.1.0 | 2.6.3 |
| statsmodels | | 0.14.2 |
| sympy | 1.10.1 | 1.13.2 |
| tables | 3.6.1 | 3.10.1 |
| vitables | 3.0.2 | N/A | 
| wheel | | 0.44.0 |
| xlsxwriter | 3.0.3 | 3.2.0 |

Windows users may find a log file of the installation process in %AppData%\Local\Temp

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
