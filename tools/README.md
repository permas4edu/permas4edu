### intespad

 * Enhanced text editor  
 * Syntax Highlighting  
 * Direct link to the users manual (UM-450) via the F1 key / pause key
 * Convenient jumping to specific messages
 * Show and Hide (all) DAT contents
 * Many shortcuts, e.g. function keys F4, F5, F6 to name a few

![intespad](/assets/intespad.png "intespad")

### emacsgold

For larger .dat files, we recommend using the emacs editor with an emacsGold extension. 
You might want to associate the file extensions .dat, .pro, .res with the Windows Batch File C:\Program Files\INTES\EDU\bin\emacsGold.bat .
A configuration file .emacs_gold is needed in your %AppData% folder. The default for context help is the ‘Pause’ key.
The following lines in .emacs_gold assign the context help function to the F1 key, for example:

```
(global-set-key [f1] (key-binding [help]))
(define-key GOLD-map [f1] (key-binding [gold help]))
```
The key F5 can be used to jump to the first comment/warning/error message if you edit your .res .pro file with emacsGold.

### PDF viewer

* sumatra
* acroread
* foxit

![pdf viewer](pdf_viewer.png)

### permasgraph
#### Supported file formats

 * .hdf
 * .post .post.gz .post.zst
 * .csv
 * .xy PERMAS xy gnuplot files
 * .x I-DEAS, MEDINA, Patran xy-data
 
![permasgraph](/assets/permasgraph.png "permasgraph")

### pyINTES Enhanced Python Interpreter

![pyINTES](pyINTES.png "Enhanced Python interpreter")

| Module | Version V19 | Version V20 | Version V21 |
|----    | ----    | ---- |  ---- |
| bokeh | 2.4.2 | 3.5.2 |  |
| conda | | 24.7.1 |   |
| contourpy |  | 1.2.1 |    |
| cython | N/A | 3.0.11 |   |
| derivative | N/A | 0.6.2 |    |
| hdf5view | N/A | 0.1.1 |     |
| h5py   | 3.6.0 | 3.11.0 |    |
| imageio | 2.9.0 | 2.35.1 |   |
| jinja2 | | 3.1.4 |    |
| joblib | | 1.4.2 |    |
| json | | 2.0.9 |     |
| lxml | | 5.3.0 |     |
| mamba | N/A | 1.5.8 |    |
| matplotlib | 3.5.1 | 3.9.2  |    |
| meshio | 5.3.4 | 5.3.5 |      |
| mplcursors | 0.5.1 | 0.5.3 |    |
| mpld3 | 0.5.7 | 0.5.10 |     |
| mpmath | 1.2.1 | 1.3.0 |     |
| numexpr | | 2.10.0 |   |
| numpy  | 1.22.3  | 1.26.4 |    |
| numpy-stl | 2.17.1 | 3.1.2 |   |
| OCC | 7.4.1-dev | 7.8.1  |     |
| openpyxl | 3.0.9 | 3.1.5 |     |
| pandas | 1.4.2   | 2.2.2 |     |
| PIL    | 9.0.1   | 10.4.0 |    |
| pip    |     | 24.2 |      |
| plotly | 5.6.0 |  5.23.0 |     |
| psutil | | 6.0.0 |      |
| pyDOE2 | 1.3.0 | N/A  |     |
| pyDOE3 | N/A   | 1.0.4  |    |
| pygments | | 2.18.0  |     |
| PySide6 | | 6.5.3 |     |
| pytest | | 8.3.2 |      |
| python-docx | 0.8.11 | 1.1.2 |     |
| python-pptx | 0.6.21 | 1.0.2  |    |
| pywt | 1.3.0 | 1.7.0  |     |
| pyzstd | | 0.16.1 |     |
| requests |  | 2.32.3  |     |
| scikit-image | 0.19.2 | 0.24.0  |    |  
| scikit-learn | 1.0.2 | 1.5.1 |     |
| scipy  | 1.7.3   |  1.14.1|     |
| seaborn | 0.11.2 |  0.13.2 |     |
| setuptools | | 72.2.0 |    |
| smt | 1.1.0 | 2.6.3 |    |
| sphinx |  | 8.0.2 |    |
| statsmodels | | 0.14.2 |    |
| sympy | 1.10.1 | 1.13.2 |   |
| tables | 3.6.1 | 3.10.1 |   |
| vitables | 3.0.2 | N/A |    |
| wheel | | 0.44.0 |     |
| xlsxwriter | 3.0.3 | 3.2.0 |    |

### Log files from the installation

Windows users may find a log file of the installation process in %AppData%\Local\Temp

Linux users will find a file ~/.INTESsetupLOG

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
