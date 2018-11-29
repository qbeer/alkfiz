This is CMWP-fit, a program for evaluation of diffraction patterns
using the method of Convolutional Multiple Whole Profile fitting.
Copyright (C) Gábor Ribárik and Tamás Ungár 1998-2008. All rights reserved.
For permission to use, copy, modify this program or any of its components,
see the file CMWP_COPYRIGHT.
(C)MWP version number: 180502.

Date: 2018-11-15 10:41:05

Data file: data/MSc_labor/DRKM.dat

The value of the lattice constant (in nm): 0.3615
The absolute value of the Burgers vector (in nm): 0.2556
The average contrast factor of the h00 reflections: 0.30525
The wavelength is: 0.15406 nm.
Using the spherical size function.
Found peak at 43.5274904735983, intensity=41.9358, phase=0.
hkl=111
H2=0.333333
g^2=22.9564
K=4.79128
ANX=0.333333
Found peak at 50.3048448557431, intensity=31.3122, phase=0.
hkl=200
H2=0
g^2=30.6086
K=5.5325
ANX=0
Found peak at 74.1752857920523, intensity=24.5648, phase=0.
hkl=220
H2=0.25
g^2=61.2172
K=7.82414
ANX=0
Found peak at 89.8530212302667, intensity=15.9306, phase=0.
hkl=311
H2=0.157025
g^2=84.1736
K=9.17462
ANX=0.0909091
Found peak at 95.242242787153, intensity=6.32459, phase=0.
hkl=222
H2=0.333333
g^2=91.8258
K=9.58258
ANX=0.333333
Found peak at 116.853565596081, intensity=0.927272, phase=0.
hkl=400
H2=0
g^2=122.434
K=11.065
ANX=0
IF_TH_FT_limit=1e-7
PROF_CUT=12
IF_N1=1024
IF_N2=1024

*** FIT ***

Calculating a,b,c,d,e to fit the measured powder diffraction pattern
with the corresponding theoretical function.

The initial values of the parameters:
C0=0.30525
a = 1
b = 1.0
c = 1.0
d = 1.0
e = 1.0
epsilon = 1.0 # FIXED
scale_a=1
scale_b=5
scale_c=0.5
scale_d=50
scale_e=0.02

*** THE SOLUTIONS ***

The unscaled parameters:
a=2.07873
b=0.752628
c=1.26831
d=1.32571
e=3.6352
The scales:
scale_a=1
scale_b=5
scale_c=0.5
scale_d=50
scale_e=0.02
The scaled parameters:
a_scaled=2.07873
b_scaled=3.76314
c_scaled=0.634155
d_scaled=66.2855
e_scaled=0.072704

And now listing the physical (microstructural) parameters:

The size parameters:
m=exp(b_scaled)=43.0835nm
sigma=c_scaled/sqrt(2)=0.448415
d=26.5761nm
L0=10.569nm

The strain parameters:
q=a_scaled=2.07873
rho=2/(Pi*(0.2556nm*d_scaled)**2)=0.00221779(1/nm)^2
Re^*=exp(-1/4)/(2*e_scaled)=5.35597nm
M^*=(Re^*)*sqrt(rho)=0.252231

After 17 iterations the fit converged.
final sum of squares of residuals : 169.993
rel. change during last iteration : -2.84229e-15
Final set of parameters            Asymptotic Standard Error 
=======================            ==========================

a               = 2.07873          +/- 0.005029     (0.2419%)
b               = 0.752628         +/- 0.00144      (0.1914%)
c               = 1.26831          +/- 0.007724     (0.609%)
d               = 1.32571          +/- 0.006904     (0.5208%)
e               = 3.6352           +/- 0.05018      (1.38%)
i_s0_0          = 43.3002          +/- 4.974e-05    (0.0001149%)
i_s0_1          = 50.3848          +/- 8.416e-05    (0.000167%)
i_s0_2          = 74.1269          +/- 0.0001203    (0.0001622%)
i_s0_3          = 89.8877          +/- 0.0001983    (0.0002206%)
i_s0_4          = 95.0666          +/- 0.0004862    (0.0005114%)
i_s0_5          = 116.919          +/- 0.00544      (0.004653%)
i_max_0         = 46.7652          +/- 0.0378       (0.08083%)
i_max_1         = 33.4732          +/- 0.02401      (0.07174%)
i_max_2         = 25.2666          +/- 0.02091      (0.08275%)
i_max_3         = 18.6761          +/- 0.01532      (0.08202%)
i_max_4         = 6.68991          +/- 0.017        (0.2541%)
i_max_5         = 0.966896         +/- 0.008354     (0.864%)

For more information about correlation matrix and confidence intervals,
please read the file data/MSc_labor/DRKM.int.sol.

WSSR=169.993
N=17095, P=17
Rwp=0.030001
Rexp=0.300703
GofF=0.0997695

*** END OF FITTING ***
