  
 +------------------------------------------------------------------------------+
 |                                                                              |
 |           This is the PERMAS Education Edition, which is intended            |
 |           for testing and demonstration purposes only and which is           |
 |           expressly not licensed for commercial use. If you want             |
 |           to get a commercial license of PERMAS, please contact              |
 |                                                                              |
 |                         INTES GmbH                                           |
 |                         Breitwiesenstrasse 28                                |
 |                         D-70565 Stuttgart                                    |
 |                         Phone: (49)-711-784 99-0                             |
 |                         Fax:   (49)-711-784 9910                             |
 |                         E-mail: sales@intes.de                               |
 |                                                                              |
 |           or your local PERMAS distributor.                                  |
 |                                                                              |
 |           Permission is granted to make & distribute copies of this          |
 |           PERMAS Education Edition provided this permission notice           |
 |           and the above license notice are preserved in all copies.          |
 |                                                                              |
 +------------------------------------------------------------------------------+
  
 +------------------------------------------------------------------------------+
 |                                 P E R M A S                                  |
 |                     Education Edition Version 19.00.359                      |
 |                        Distributed by INTES Stuttgart                        |
 |                      Date: 26-Jun-23 14:09:31 (PID=1463)                     |
 |                    +-----------------------------------+                     |
 |                    |             tomac_opt             |                     |
 |                    +-----------------------------------+                     |
 |                         Site: INTES GmbH (1915/2037)                         |
 |                  Host: nils / Linux-x86_64-4.19.0-24-amd64                   |
 |         4 core Intel(R) Core(TM) i3-8100 CPU @ 3.60GHz / 31.34 GiByte        |
 |                           Code: M9g8 (F90, 32 bpw)                           |
 +------------------------------------------------------------------------------+
  
 >>>>>> Start reading 'tomac_model.dat'
 1              $ENTER COMPONENT  NAME = DFLT_COMP  DOFTYPE = DISP MATH
 3                 $STRUCTURE
 5                    $ELEMENT TYPE = HEXE8
 4807                 $ESET NAME = BEAM          DESCRIPTION = 'BEAM'
 5152                 $COOR
 11809                $PART  NAME = BEAM
 11812             $END STRUCTURE
 11814          $EXIT COMPONENT
 11816          $FIN
 <<<<<< Returning from 'tomac_model.dat'
 >>>>>> Start reading 'tomac.dat'
 1              $ENTER COMPONENT  NAME = DFLT_COMP  DOFTYPE = DISP MATH
 3                 $SITUATION  NAME = STEP_1
 5                 $END SITUATION
 7                 $CONSTRAINTS  NAME = C_STEP_1
 9                 $END CONSTRAINTS
 11                $SYSTEM  NAME = S_STEP_1
 13                   $ELPROP
 16                $END SYSTEM
 18             $EXIT COMPONENT
 20             $ENTER MATERIAL
 22                $MATERIAL  NAME = STEEL  TYPE = ISO
 24                   $ELASTIC  GENERAL  INPUT = DATA
 27                   $DENSITY  GENERAL  INPUT = DATA
 30                $END MATERIAL
 32             $EXIT MATERIAL
 34             $FIN
 <<<<<< Returning from 'tomac.dat'
 >>>>>> Start reading 'tomac_opt.dat'
 1              $ENTER COMPONENT  NAME = DFLT_COMP  DOFTYPE = DISP MATH
 3                 $SITUATION  NAME = OPT  CONNECTED = STEP_1
 5                 $END SITUATION
 7                 $STRUCTURE
 9                    $DELEMENT TYPE = DHEXE8
 12                $END STRUCTURE
 14                $SYSTEM  NAME = S_STEP_1
 16                   $DSVVAL
 20                   $DVMPAR  NAME = STEEL  KIND = DIRECT  MODE = SHIFT
 24                $END SYSTEM
 26                $MODIFICATION
 28                   $DSVLIMIT
 32                   $DCONSTRAINT FREQ  TYPE = GLOBAL  SITUATION = STEP_1  MODE =  1  DATTYPE = REAL
 35                   $DCONSTRAINT FREQ  TYPE = GLOBAL  SITUATION = STEP_1  MODE =  2  DATTYPE = REAL
 38                   $DCONSTRAINT FREQ  TYPE = GLOBAL  SITUATION = STEP_1  MODE =  4  DATTYPE = REAL
 41                   $DCONSTRAINT FREQ  TYPE = GLOBAL  SITUATION = STEP_1  MODE =  6  DATTYPE = REAL
 44                   $DCONSTRAINT FREQ  TYPE = GLOBAL  SITUATION = STEP_1  MODE =  9  DATTYPE = REAL
 47                   $DCONSTRAINT FREQ  TYPE = GLOBAL  SITUATION = STEP_1  MODE = 10  DATTYPE = REAL
 50                   $DCFUNCTION CSTID = LSTSQ FUNCTION = 100 EQUALITY = YES
 58                   $FUNCTION LIB FID = 100 TYPE = SUMSQDIFF
 67                   $DCONSTRAINT WEIGHT TYPE = GLOBAL
 71                   $DOBJECT CONSTRAINT = LSTSQ TARGET = MIN
 73                   $DSVMLIM
 77                $END MODIFICATION
 79                $RESULTS
 81                   $RSLITEM FREQ TYPE = GLOBAL SITUATION = STEP_1 MODE = 1
 83                   $RSLITEM FREQ TYPE = GLOBAL SITUATION = STEP_1 MODE = 2
 85                   $RSLITEM FREQ TYPE = GLOBAL SITUATION = STEP_1 MODE = 4
 87                   $RSLITEM FREQ TYPE = GLOBAL SITUATION = STEP_1 MODE = 6
 89                   $RSLITEM FREQ TYPE = GLOBAL SITUATION = STEP_1 MODE = 9
 91                   $RSLITEM FREQ TYPE = GLOBAL SITUATION = STEP_1 MODE = 10
 94                   $RESEXT ITEM
 102               $END RESULTS
 104            $EXIT COMPONENT
 106            $FIN
 <<<<<< Returning from 'tomac_opt.dat'
  
 > Characteristics of component DFLT_COMP
 +-------------------------------+-------------+--------------------+--------------------+
 |                               |      Number |  Lowest Identifier | Highest Identifier |
 |-------------------------------+-------------+--------------------+--------------------|
 | Nodes                         |        6655 |                  1 |               6655 |
 | Elements                      |        4800 |                  1 |               4800 |
 +-------------------------------+-------------+--------------------+--------------------+
  
 > Elements used in component DFLT_COMP
 +----------------------+----------------------+
 |   No. of Elements    |     Element Type     |
 |----------------------+----------------------|
 |                 4800 | HEXE8                |
 +----------------------+----------------------+
  
 > Design model characteristics of component DFLT_COMP
 +--------------------------+-------------+--------------------+--------------------+
 |                          |      Number |  Lowest Identifier | Highest Identifier |
 |--------------------------+-------------+--------------------+--------------------|
 | Design Variables         |           2 |                  1 |                  2 |
 | Design Elements          |           1 |                  1 |                  1 |
 +--------------------------+-------------+--------------------+--------------------+
  
 > Design elements used in component DFLT_COMP
 +----------------------+----------------------+
 |No. of Design elements| Design element Type  |
 |----------------------+----------------------|
 |                    1 | DHEXE8               |
 +----------------------+----------------------+
  
 > Material reference in system variant S_STEP_1 of component DFLT_COMP
 +----------------------+----------------------+
 |   No. of Elements    |       Material       |
 |----------------------+----------------------|
 |                 4800 | STEEL                |
 +----------------------+----------------------+
  
  
 > Constraints of component DFLT_COMP in variant DFLTMOD
 +--------------------+--------------------+
 | No. of Constraints |  Constraint type   |
 |--------------------+--------------------|
 |                  1 | WEIGHT             |
 |                  6 | FREQ               |
 |                  1 | DCFUNC             |
 +--------------------+--------------------+
  
 *C* 320/0023 Situation STEP_1 activated in component DFLT_COMP
  
  
 > Degree of freedom information for doftype DISP in situation STEP_1 of component DFLT_COMP
 +----------------------+----------------------+
 |       Freedom        |     No. of DOFs      |
 |----------------------+----------------------|
 | local                |                19965 |
 +----------------------+----------------------+
  
 *C* 320/0023 Situation OPT activated in component DFLT_COMP
 *C* 320/0023 Situation STEP_1 activated in component DFLT_COMP
 *C* 320/0023 Situation OPT activated in component DFLT_COMP
 *C* 320/0023 Situation STEP_1 activated in component DFLT_COMP
 *C* 320/0023 Situation OPT activated in component DFLT_COMP
  
 --- Task Loop: 1 ---
  
         =>   Number of rigid body modes: 6
  
 Automatic rigid body modes in situation STEP_1 of component DFLT_COMP
 =====================================================================
  
 > Cholesky decomposition for DOFTYPE = DISP
 +-------------+
 | X^T * K * X |
 |-------------|
 |   -4.25E-11 |
 |   -1.75E-11 |
 |   -7.30E-11 |
 |   -1.44E-11 |
 |   -4.30E-11 |
 |   -1.87E-11 |
 +-------------+
 > See also the Rayleigh quotient table if it is available further down.
  
  
 Mass information in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Mass type: Consistent
 +-----------------+
 |      Mass       |
 |-----------------|
 |    2.826000E-03 |
 +-----------------+
  
 > Center of gravity
 +-----------------+-----------------+-----------------+
 |       CGx       |       CGy       |       CGz       |
 |-----------------+-----------------+-----------------|
 |  300.000000E+00 |    6.000000E+00 |   25.000000E+00 |
 +-----------------+-----------------+-----------------+
  
  
 > Moments of inertia in component system
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |    2.490648E+00 :   -5.086799E+00 :  -21.194996E+00 |
 |     : Iyy : Iyz |                 :  341.474945E+00 : -423.899933E-03 |
 |     :     : Izz |                 :                 :  339.255615E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 > Moments of inertia related to center of gravity: 3.0000E+02, 6.0000E+00, 2.5000E+01
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |  622.661926E-03 :   10.153514E-09 :  -22.480379E-09 |
 |     : Iyy : Iyz |                 :   85.368744E+00 : -141.158524E-12 |
 |     :     : Izz |                 :                 :   84.813904E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 Rigid body modes in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Rayleigh quotient of rigid body modes in component system (Table RIGRQTAB.DISP)
 -------------------------------------------------------------------
     RigMode    Freq. Error  R. Quotient    X^T*K*X      X^T*M*X
 -------------------------------------------------------------------
              1  1.60473E-03 -1.01663E-04 -1.01663E-04  1.00000E+00
              2  1.02956E-03 -4.18467E-05 -4.18467E-05  1.00000E+00
              3  2.14196E-03 -1.81127E-04 -1.81127E-04  1.00000E+00
              4  9.25638E-04 -3.38254E-05 -3.38254E-05  1.00000E+00
              5  1.67545E-03 -1.10822E-04 -1.10822E-04  1.00000E+00
              6  1.10842E-03 -4.85031E-05 -4.85031E-05  1.00000E+00
 -------------------------------------------------------------------
  
  
 Mode calculation in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Eigenvalues and frequencies in component system (Table RVALTAB.DISP)
 ------------------------------------------------------
      Mode       Frequency    Eigenvalue   Circ.Freq.
 ------------------------------------------------------
     Maximum     3.25050E+03  8.08119E-07  2.04235E+04
       at            10           1            10
     Minimum     1.77044E+02  2.39739E-09  1.11240E+03
       at            1            10           1
 ------------------------------------------------------
              1  1.77044E+02  8.08119E-07  1.11240E+03
              2  4.87308E+02  1.06668E-07  3.06184E+03
              3  7.20950E+02  4.87338E-08  4.52986E+03
              4  9.53263E+02  2.78750E-08  5.98953E+03
              5  1.16037E+03  1.88124E-08  7.29085E+03
              6  1.57117E+03  1.02610E-08  9.87198E+03
              7  1.90792E+03  6.95860E-09  1.19878E+04
              8  2.32997E+03  4.66593E-09  1.46397E+04
              9  2.33820E+03  4.63315E-09  1.46913E+04
             10  3.25050E+03  2.39739E-09  2.04235E+04
 ------------------------------------------------------
  
 *C* 366/0011 Effective masses are only available for supported vibrations in
              situation STEP_1 of component DFLT_COMP
 *C* 363/0084 Elemental weight matrices already computed in situation STEP_1 of
              component DFLT_COMP
  
 --- Task Loop: 2 ---
  
         =>   Number of rigid body modes: 6
  
 Automatic rigid body modes in situation STEP_1 of component DFLT_COMP
 =====================================================================
  
 > Cholesky decomposition for DOFTYPE = DISP
 +-------------+
 | X^T * K * X |
 |-------------|
 |   -1.85E-11 |
 |   -1.62E-12 |
 |    1.72E-12 |
 |   -4.16E-11 |
 |   -9.01E-12 |
 |   -1.68E-11 |
 +-------------+
 > See also the Rayleigh quotient table if it is available further down.
  
  
 Mass information in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Mass type: Consistent
 +-----------------+
 |      Mass       |
 |-----------------|
 |    2.828620E-03 |
 +-----------------+
  
 > Center of gravity
 +-----------------+-----------------+-----------------+
 |       CGx       |       CGy       |       CGz       |
 |-----------------+-----------------+-----------------|
 |  300.000000E+00 |    6.000000E+00 |   25.000000E+00 |
 +-----------------+-----------------+-----------------+
  
  
 > Moments of inertia in component system
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |    2.492957E+00 :   -5.091516E+00 :  -21.214651E+00 |
 |     : Iyy : Iyz |                 :  341.791626E+00 : -424.292999E-03 |
 |     :     : Izz |                 :                 :  339.570190E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 > Moments of inertia related to center of gravity: 3.0000E+02, 6.0000E+00, 2.5000E+01
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |  623.239319E-03 :   10.771557E-09 :  -23.110458E-09 |
 |     : Iyy : Iyz |                 :   85.447907E+00 : -105.028427E-12 |
 |     :     : Izz |                 :                 :   84.892555E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 Rigid body modes in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Rayleigh quotient of rigid body modes in component system (Table RIGRQTAB.DISP)
 -------------------------------------------------------------------
     RigMode    Freq. Error  R. Quotient    X^T*K*X      X^T*M*X
 -------------------------------------------------------------------
              1  1.05768E-03 -4.41644E-05 -4.41644E-05  1.00000E+00
              2  3.10848E-04 -3.81467E-06 -3.81467E-06  1.00000E+00
              3  3.22615E-04  4.10894E-06  4.10894E-06  1.00000E+00
              4  1.61907E-03 -1.03489E-04 -1.03489E-04  1.00000E+00
              5  7.32862E-04 -2.12033E-05 -2.12033E-05  1.00000E+00
              6  1.05544E-03 -4.39772E-05 -4.39772E-05  1.00000E+00
 -------------------------------------------------------------------
  
  
 Mode calculation in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Eigenvalues and frequencies in component system (Table RVALTAB.DISP)
 ------------------------------------------------------
      Mode       Frequency    Eigenvalue   Circ.Freq.
 ------------------------------------------------------
     Maximum     3.23391E+03  8.16431E-07  2.03193E+04
       at            10           1            10
     Minimum     1.76141E+02  2.42205E-09  1.10673E+03
       at            1            10           1
 ------------------------------------------------------
              1  1.76141E+02  8.16431E-07  1.10673E+03
              2  4.84821E+02  1.07765E-07  3.04622E+03
              3  7.17271E+02  4.92350E-08  4.50675E+03
              4  9.48399E+02  2.81617E-08  5.95897E+03
              5  1.15445E+03  1.90059E-08  7.25365E+03
              6  1.56316E+03  1.03666E-08  9.82160E+03
              7  1.89818E+03  7.03017E-09  1.19266E+04
              8  2.31808E+03  4.71392E-09  1.45649E+04
              9  2.32627E+03  4.68081E-09  1.46164E+04
             10  3.23391E+03  2.42205E-09  2.03193E+04
 ------------------------------------------------------
  
 *C* 366/0011 Effective masses are only available for supported vibrations in
              situation STEP_1 of component DFLT_COMP
 *C* 363/0084 Elemental weight matrices already computed in situation STEP_1 of
              component DFLT_COMP
  
 --- Task Loop: 3 ---
  
         =>   Number of rigid body modes: 6
  
 Automatic rigid body modes in situation STEP_1 of component DFLT_COMP
 =====================================================================
  
 > Cholesky decomposition for DOFTYPE = DISP
 +-------------+
 | X^T * K * X |
 |-------------|
 |    2.99E-11 |
 |    6.00E-12 |
 |    4.95E-11 |
 |    2.03E-11 |
 |    1.55E-11 |
 |    1.21E-11 |
 +-------------+
 > See also the Rayleigh quotient table if it is available further down.
  
  
 Mass information in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Mass type: Consistent
 +-----------------+
 |      Mass       |
 |-----------------|
 |    2.831449E-03 |
 +-----------------+
  
 > Center of gravity
 +-----------------+-----------------+-----------------+
 |       CGx       |       CGy       |       CGz       |
 |-----------------+-----------------+-----------------|
 |  300.000000E+00 |    6.000000E+00 |   25.000000E+00 |
 +-----------------+-----------------+-----------------+
  
  
 > Moments of inertia in component system
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |    2.495450E+00 :   -5.096607E+00 :  -21.235865E+00 |
 |     : Iyy : Iyz |                 :  342.133392E+00 : -424.717285E-03 |
 |     :     : Izz |                 :                 :  339.909760E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 > Moments of inertia related to center of gravity: 3.0000E+02, 6.0000E+00, 2.5000E+01
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |  623.862549E-03 :   10.409003E-09 :  -25.466576E-09 |
 |     : Iyy : Iyz |                 :   85.533348E+00 : -139.539825E-12 |
 |     :     : Izz |                 :                 :   84.977440E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 Rigid body modes in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Rayleigh quotient of rigid body modes in component system (Table RIGRQTAB.DISP)
 -------------------------------------------------------------------
     RigMode    Freq. Error  R. Quotient    X^T*K*X      X^T*M*X
 -------------------------------------------------------------------
              1  1.34442E-03  7.13561E-05  7.13561E-05  1.00000E+00
              2  6.03164E-04  1.43625E-05  1.43625E-05  1.00000E+00
              3  1.76244E-03  1.22628E-04  1.22628E-04  1.00000E+00
              4  1.09935E-03  4.77126E-05  4.77126E-05  1.00000E+00
              5  9.86759E-04  3.84399E-05  3.84399E-05  1.00000E+00
              6  8.62796E-04  2.93884E-05  2.93884E-05  1.00000E+00
 -------------------------------------------------------------------
  
  
 Mode calculation in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Eigenvalues and frequencies in component system (Table RVALTAB.DISP)
 ------------------------------------------------------
      Mode       Frequency    Eigenvalue   Circ.Freq.
 ------------------------------------------------------
     Maximum     3.21704E+03  8.25016E-07  2.02133E+04
       at            10           1            10
     Minimum     1.75222E+02  2.44752E-09  1.10095E+03
       at            1            10           1
 ------------------------------------------------------
              1  1.75222E+02  8.25016E-07  1.10095E+03
              2  4.82292E+02  1.08898E-07  3.03033E+03
              3  7.13529E+02  4.97527E-08  4.48324E+03
              4  9.43451E+02  2.84578E-08  5.92788E+03
              5  1.14843E+03  1.92057E-08  7.21580E+03
              6  1.55500E+03  1.04756E-08  9.77037E+03
              7  1.88828E+03  7.10409E-09  1.18644E+04
              8  2.30599E+03  4.76349E-09  1.44890E+04
              9  2.31413E+03  4.73003E-09  1.45401E+04
             10  3.21704E+03  2.44752E-09  2.02133E+04
 ------------------------------------------------------
  
 *C* 366/0011 Effective masses are only available for supported vibrations in
              situation STEP_1 of component DFLT_COMP
 *C* 363/0084 Elemental weight matrices already computed in situation STEP_1 of
              component DFLT_COMP
  
 --- Task Loop: 4 ---
  
         =>   Number of rigid body modes: 6
  
 Automatic rigid body modes in situation STEP_1 of component DFLT_COMP
 =====================================================================
  
 > Cholesky decomposition for DOFTYPE = DISP
 +-------------+
 | X^T * K * X |
 |-------------|
 |    3.41E-12 |
 |    2.64E-11 |
 |    1.96E-11 |
 |   -4.25E-11 |
 |    1.95E-11 |
 |    1.13E-12 |
 +-------------+
 > See also the Rayleigh quotient table if it is available further down.
  
  
 Mass information in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Mass type: Consistent
 +-----------------+
 |      Mass       |
 |-----------------|
 |    2.833704E-03 |
 +-----------------+
  
 > Center of gravity
 +-----------------+-----------------+-----------------+
 |       CGx       |       CGy       |       CGz       |
 |-----------------+-----------------+-----------------|
 |  300.000000E+00 |    6.000000E+00 |   25.000000E+00 |
 +-----------------+-----------------+-----------------+
  
  
 > Moments of inertia in component system
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |    2.497437E+00 :   -5.100666E+00 :  -21.252777E+00 |
 |     : Iyy : Iyz |                 :  342.405853E+00 : -425.055511E-03 |
 |     :     : Izz |                 :                 :  340.180450E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 > Moments of inertia related to center of gravity: 3.0000E+02, 6.0000E+00, 2.5000E+01
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |  624.359375E-03 :    9.701406E-09 :  -23.468172E-09 |
 |     : Iyy : Iyz |                 :   85.601463E+00 : -117.873268E-12 |
 |     :     : Izz |                 :                 :   85.045113E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 Rigid body modes in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Rayleigh quotient of rigid body modes in component system (Table RIGRQTAB.DISP)
 -------------------------------------------------------------------
     RigMode    Freq. Error  R. Quotient    X^T*K*X      X^T*M*X
 -------------------------------------------------------------------
              1  4.54483E-04  8.15444E-06  8.15444E-06  1.00000E+00
              2  1.25429E-03  6.21089E-05  6.21089E-05  1.00000E+00
              3  1.08802E-03  4.67342E-05  4.67342E-05  1.00000E+00
              4  1.63393E-03 -1.05397E-04 -1.05397E-04  1.00000E+00
              5  1.07728E-03  4.58161E-05  4.58161E-05  1.00000E+00
              6  1.49833E-04 -8.86290E-07 -8.86290E-07  1.00000E+00
 -------------------------------------------------------------------
  
  
 Mode calculation in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Eigenvalues and frequencies in component system (Table RVALTAB.DISP)
 ------------------------------------------------------
      Mode       Frequency    Eigenvalue   Circ.Freq.
 ------------------------------------------------------
     Maximum     3.20086E+03  8.33380E-07  2.01116E+04
       at            10           1            10
     Minimum     1.74341E+02  2.47234E-09  1.09541E+03
       at            1            10           1
 ------------------------------------------------------
              1  1.74341E+02  8.33380E-07  1.09541E+03
              2  4.79866E+02  1.10002E-07  3.01508E+03
              3  7.09940E+02  5.02571E-08  4.46068E+03
              4  9.38705E+02  2.87463E-08  5.89806E+03
              5  1.14265E+03  1.94004E-08  7.17950E+03
              6  1.54718E+03  1.05818E-08  9.72122E+03
              7  1.87878E+03  7.17611E-09  1.18047E+04
              8  2.29439E+03  4.81178E-09  1.44161E+04
              9  2.30249E+03  4.77798E-09  1.44670E+04
             10  3.20086E+03  2.47234E-09  2.01116E+04
 ------------------------------------------------------
  
 *C* 366/0011 Effective masses are only available for supported vibrations in
              situation STEP_1 of component DFLT_COMP
 *C* 363/0084 Elemental weight matrices already computed in situation STEP_1 of
              component DFLT_COMP
  
 --- Task Loop: 5 ---
  
         =>   Number of rigid body modes: 6
  
 Automatic rigid body modes in situation STEP_1 of component DFLT_COMP
 =====================================================================
  
 > Cholesky decomposition for DOFTYPE = DISP
 +-------------+
 | X^T * K * X |
 |-------------|
 |   -2.24E-11 |
 |   -5.58E-12 |
 |   -5.00E-11 |
 |   -3.51E-12 |
 |   -3.09E-11 |
 |   -1.74E-11 |
 +-------------+
 > See also the Rayleigh quotient table if it is available further down.
  
  
 Mass information in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Mass type: Consistent
 +-----------------+
 |      Mass       |
 |-----------------|
 |    2.832418E-03 |
 +-----------------+
  
 > Center of gravity
 +-----------------+-----------------+-----------------+
 |       CGx       |       CGy       |       CGz       |
 |-----------------+-----------------+-----------------|
 |  300.000000E+00 |    6.000000E+00 |   25.000000E+00 |
 +-----------------+-----------------+-----------------+
  
  
 > Moments of inertia in component system
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |    2.496305E+00 :   -5.098352E+00 :  -21.243136E+00 |
 |     : Iyy : Iyz |                 :  342.250519E+00 : -424.862701E-03 |
 |     :     : Izz |                 :                 :  340.026123E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 > Moments of inertia related to center of gravity: 3.0000E+02, 6.0000E+00, 2.5000E+01
 +-----------------+-----------------------------------------------------+
 | Ixx : Ixy : Ixz |  624.076111E-03 :   10.650021E-09 :  -24.263588E-09 |
 |     : Iyy : Iyz |                 :   85.562637E+00 : -119.678658E-12 |
 |     :     : Izz |                 :                 :   85.006538E+00 |
 +-----------------+-----------------------------------------------------+
  
  
 Rigid body modes in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Rayleigh quotient of rigid body modes in component system (Table RIGRQTAB.DISP)
 -------------------------------------------------------------------
     RigMode    Freq. Error  R. Quotient    X^T*K*X      X^T*M*X
 -------------------------------------------------------------------
              1  1.16437E-03 -5.35236E-05 -5.35236E-05  1.00000E+00
              2  5.81333E-04 -1.33416E-05 -1.33416E-05  1.00000E+00
              3  1.77150E-03 -1.23892E-04 -1.23892E-04  1.00000E+00
              4  4.57525E-04 -8.26397E-06 -8.26397E-06  1.00000E+00
              5  1.42774E-03 -8.04741E-05 -8.04741E-05  1.00000E+00
              6  1.06673E-03 -4.49229E-05 -4.49229E-05  1.00000E+00
 -------------------------------------------------------------------
  
  
 Mode calculation in situation STEP_1 of component DFLT_COMP
 ===========================================================
  
 > Eigenvalues and frequencies in component system (Table RVALTAB.DISP)
 ------------------------------------------------------
      Mode       Frequency    Eigenvalue   Circ.Freq.
 ------------------------------------------------------
     Maximum     3.20938E+03  8.28959E-07  2.01651E+04
       at            10           1            10
     Minimum     1.74805E+02  2.45922E-09  1.09833E+03
       at            1            10           1
 ------------------------------------------------------
              1  1.74805E+02  8.28959E-07  1.09833E+03
              2  4.81143E+02  1.09419E-07  3.02311E+03
              3  7.11830E+02  4.99905E-08  4.47256E+03
              4  9.41205E+02  2.85938E-08  5.91376E+03
              5  1.14570E+03  1.92975E-08  7.19862E+03
              6  1.55130E+03  1.05257E-08  9.74710E+03
              7  1.88378E+03  7.13805E-09  1.18361E+04
              8  2.30050E+03  4.78626E-09  1.44545E+04
              9  2.30862E+03  4.75264E-09  1.45055E+04
             10  3.20938E+03  2.45922E-09  2.01651E+04
 ------------------------------------------------------
  
 *C* 366/0011 Effective masses are only available for supported vibrations in
              situation STEP_1 of component DFLT_COMP
 *C* 363/0084 Elemental weight matrices already computed in situation STEP_1 of
              component DFLT_COMP
 Convergence information for optimization in situation OPT of component DFLT_COMP
 ================================================================================
  
 > Convergence summary for METHOD = ACP
 +-----------+-------------------------------+
 |   Count   |             Type              |
 |-----------+-------------------------------|
 |         4 | Iterations                    |
 |         2 | Design variables              |
 |         0 | Dependent design variables    |
 |         1 | Current number of constraints |
 |         1 | Total number of constraints   |
 +-----------+-------------------------------+
  
 > Convergence Parameters
 +--------------------+---------------------+---------------------+---------------------+
 |        Type        |        Value        | Max.relative Change |        Limit        |
 |--------------------+---------------------+---------------------+---------------------|
 | Objective Function |         1.00000E+00 |         7.27170E-06 |        10.00000E-06 |
 | Constraints        |         0.00000E+00 |                 --- |        20.00000E-03 |
 +--------------------+---------------------+---------------------+---------------------+
  
 *W* 501/1017 Previous selection canceled; item xydata type = srhis
 *W* 501/1017 Previous selection canceled; item xydata type = dhis
         PERMAS run ended without errors (16 Comments)
         There are 2 Warning Messages, please check
         -------------------------------------------------------------------
