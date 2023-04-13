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
 
Some problems only occur in special circumstances (special data, customized configuration, user environment settings, platform specifics).
Therefore, it is very important to ensure that the problem can be reproduced in the most common setup (without customized settings) with the provided data (Python script, model data, further info).

####  Disable customized settings

Since customized settings may change the behavior of VisPER significantly it is important to try to reproduce the observed problem under standard settings where the customized settings on different levels are ignored as much as possible. Otherwise the VisPER developer may not reproduce the described problem on his site. There are several ways to influence the application behavior:

* Session-persistant user-specific settings are stored in
  + ~/.visper/19.0-EDU/configrc on Linux
  + Registry under Computer\HKEY_CURRENT_USER\SOFTWARE\INTES\VisPER on Windows  
  Ignore session-persistant settings via VisPER command line option --no-configrc
*  User-specific configuration file startup.pm which can be found under
   + ~/.visper/19.0-EDU/startup.pm on Linux
   + %APPDATA%/Intes/VisPER/19.0-EDU/startup.pm on Windows  
  This file may not exist if the user did never provide it. It will not installed by default. But during the first start of a newer VisPER version the configuration files of an older VisPER version may be copied into the corresponding directory.  
  Ignore user-specific startup.pm via VisPER command line option --no-user-config  
*  Site-specific configuration file which may be provided by the administrator and can be found under the installation path of VisPER under etc/visper.pm - the VisPER installation path may be retrieved by typing PmsIF.getVisperVersionDir() into VisPER -> Extras -> Console
Ignore site-specific settings via VisPER command line option --no-site-config 
* PERMAS-based configuration that may also influence the behavior of VisPER (e.g. VISPER.DFT, visperrc_gl or specific environment variables) 
since a PERMAS instance is always running as data basis of VisPER. Consult the manual to know how these PERMAS-based settings may be ignored or modified.

First, try to disable all VisPER-specific customized settings - this can be achieved by the VisPER command line option --qa or by combining all 3 command line options mentioned above.
If the problem can be reproduced without customized settings - fine! Record a Python script from the very beginning by
starting VisPER with the command line options --qa --logScript visper_bug.pm and afterwards make sure that the recorded Python script reproduces the misbehavior by restarting VisPER with --qa visper_bug.pm again. If the problem still arises - fine! This reduces the needed description how the problem can be reproduced.

If the problem cannot be reproduced without customized settings try each combination of above mentioned command line options to reduce customized settings as far as possible. If it depends on the session-persistant or user-specific configuration those configuration data is also needed by us to reproduce the problem.
