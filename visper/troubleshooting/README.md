### Essential information in a problem report

#### Version information

Provide at least the first line of output of visperEDU --version better the first 4 lines which could also be found on the VisPER log messages tab of the PERMAS Control Center if VisPER was started this way.
It should look like this 

```
VisPER-EDU 21.00.206-Rev.53503 (2026-10-13 05:27:56) / PERMAS (2026-10-12 10:36:26), linux-64
 Libs: Python 3.13.13, Qt 6.8.7, OpenSceneGraph 3.6.5, HDF5-2.1.0, sc.iViz-FW: 0.90, 261013164536
 Copyright 2005-2026 INTES GmbH <visper@intes.de> / Commit 641c9be9704cf66d2619a5cac141096a40cdef33
Platform: Linux 6.1.0-53-amd64, Machine: x86_64 nils.local
```
```
C:\Program Files\INTES\EDU\bin>visperEDU.bat --vers
VisPER-EDU 21.00.203-Rev.53470 (2026-10-02 10:16:49) / PERMAS (2026-10-01 10:40:23), win64
 Libs: Python 3.13.13, Qt 6.8.7, OpenSceneGraph 3.6.5, HDF5-2.1.0, sc.iViz-FW: 0.90, 261013160850
 Copyright 2005-2026 INTES GmbH <visper@intes.de> / Commit 59073f4698595fed95e2e48fd2e475dfa5841037
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
  + ~/.visper/21.0-EDU/configrc on Linux
  + Registry under Computer\HKEY_CURRENT_USER\SOFTWARE\INTES\VisPER on Windows  
  Ignore session-persistant settings via VisPER command line option --no-configrc
*  User-specific configuration file startup.pm which can be found under
   + ~/.visper/21.0-EDU/startup.pm on Linux
   + %APPDATA%/Intes/VisPER/21.0-EDU/startup.pm on Windows  
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
