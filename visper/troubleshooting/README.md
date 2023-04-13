### Essential information in a problem report

#### Version information

Provide at least the first line of output of visperEDU --version better the first 4 lines which could also be found on the VisPER log messages tab of the PERMAS Control Center if VisPER was started this way.
It should look like this 

```
VisPER-EDU 19.00.334-Rev.49268 (2023-04-13 05:26:41) / PERMAS (2023-04-11 17:29:40), linux-64
 Libs: Python 3.9.12, Qt 5.15.9, OpenSceneGraph 3.6.4, HDF5-1.10.9, sc.iViz-FW: 0.82, 230413133753
 Copyright 2005-2023 INTES GmbH <visper@intes.de> / Commit 0bed3ad957a704db5d74c563e4586f133024f21b
Platform: Linux 4.19.0-23-amd64, Machine: x86_64 nils.local
```
 * Ensure that the problem does not depend on your customized settings (see also below). If the problem arises only with your applied configuration we also need this information.
 * Clear description of misbehavior, if unclear provide your expectations.
 * Exact description what needs to be interactively done to reproduce the observed behavior.
 * Recorded Python script if useful to trigger the problem. Make sure that the recorded script really reproduce the problem or at least can be used to minimize the subsequent essential interaction to trigger the problem. A recorded Python script cannot replace the exact description what to do to trigger the problem if the Python script does not trigger it itself.
 *  Data that is needed to trigger the observed behavior. The smaller the data the better the problem can be fixed. If the problem can also be observed with some example data there is no need to provide any model data - then just refer to the example data set. 
 
 
