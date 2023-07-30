The example is taken from [Eigensensitivity of damped system with distinct
and repeated eigenvalues by chain rule](https://doi.org/10.1002/nme.7331)

$$(\lambda^2 M + \lambda [D+G] + K) x = 0$$

$$M=\begin{bmatrix} m_1 + m_0 & 0 & 0 \\
0 & m_2+m_0 & 0 \\
0 & 0 & m_3 + m_0 \end{bmatrix}$$

$$K=\begin{bmatrix} k_1+k_2 & -k_2 & 0 \\
-k_2 & k_2 + k_3 +k_5 & -k_3 \\
0 & -k_3 & k_3+k_4 \end{bmatrix}$$

$$D=\begin{bmatrix} c_2+c_3+c_4 & -c_4 & -c_2 \\
-c_4 & c_1+2 c_4  & -c_4 \\
-c_2 & -c_4 & c_2+c_4 \end{bmatrix}$$

$$G=\begin{bmatrix} 0 & -c_4 & -c_2 \\
 c_4 & 0  & -c_4 \\
c_2 & c_4 & 0 \end{bmatrix}$$
