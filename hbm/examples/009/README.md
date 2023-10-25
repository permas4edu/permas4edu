The example is taken from [Tracking Amplitude Extrema of Nonlinear Frequency Responses using the Harmonic Balance Method](https://doi.org/10.1002/nme.7376)

$$m \ddot{x} + c\dot{x} + k x + k_2 x^2 + k_3 x^3 = \lambda \sin(\Omega t)$$

![Nonlinear Frequency response](HBM.png)

$$ \begin{bmatrix} 1 & 0 \\ 
0 & 1 \end{bmatrix} 
\begin{bmatrix} \ddot{x}_1 \\ 
\ddot{x}_2 \end{bmatrix} +
\begin{bmatrix} c_1 + c_{12} & -c_{12} \\
-c_{12} & c_2 + c_{12} \end{bmatrix}
\begin{bmatrix} \dot{x}_1 \\
\dot{x}_2 \end{bmatrix}
$$

![Nonlinear Frequency Responses](NFRs.png)
