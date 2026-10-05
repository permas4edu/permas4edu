## V20

* New procedure MODAL HARMONIC BALANCE
* New eigensolver MLDR
* New handling of rigid body modes
* MAC matrix for complex modes
* Stress based topology optimization
* CAD2CAD workflow for topology optimization
* Enhanced post-processing features
  + Rendering of beam, mass6 and shell elements
  + Orbit and traceline plots
  + Isosurface visualization
  + Stress resultants
  + Transformation of results into local reference systems
* Interface extensions
* $FUNCTION FORMULA extensions

## V21

* Contact analysis introduces automatic surface splitting at large kinks substantially reducing modeling effort and improving efficiency and robustness.
* The new automatic search of contact partners dramatically speeds up contact modeling, makes the use of contact analyses more accessible, and significantly increases overall modeling efficiency and reliability.
* A completely new stabilized contact algorithm with great improvements in terms of stability and performance was developed for frictional contact problems.
* Dynamic contact and friction is now available in most dynamic analyses.
* The MLDR solver was adapted to deal with many additional static mode shapes (addmodes), especially contact addmodes. 
* Completely new time integration methods in time history analyses are available to improve stability and the treatment of nonlinear forces.
* The definition of loads for a transient response analysis now supports a variety of new features including automatic translation of PSD signals to the time domain and filter options.
* Enhancements of the Harmonic Balance Method improve computational efficiency and provide additional insight into the dynamic behavior of the computed solutions.
* New features in PERMAS-OPT include fully integrated optimization based on fatigue-analysis results and a complete revision of the bead optimization method.
* Direct matrix input now supports both symmetric and non-symmetric matrices, stiffness, mass and damping matrices.
  
* Model verification features
  + Enhanced model information tree
  + Interactive computation of mass and inertia properties
* Redesign of several dialog bars
  + Select
  + MPCs
  + ...
* New Wizards
  + BeadWizard
  + BeadDesignWizard
 
