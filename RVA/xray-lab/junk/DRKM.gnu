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
FIT_LIMIT = 1e-9
FIT_MAXITER = 1000
show_size_parameters=1

num_r=6


g2_0=22.9564
g2_1=30.6086
g2_2=61.2172
g2_3=84.1736
g2_4=91.8258
g2_5=122.434

i_s0_0=43.5274904735983
i_s0_1=50.3048448557431
i_s0_2=74.1752857920523
i_s0_3=89.8530212302667
i_s0_4=95.242242787153
i_s0_5=116.853565596081

i_max_0=41.9358
i_max_1=31.3122
i_max_2=24.5648
i_max_3=15.9306
i_max_4=6.32459
i_max_5=0.927272

phase_no_0=0
phase_no_1=0
phase_no_2=0
phase_no_3=0
phase_no_4=0
phase_no_5=0







h2_0=0.333333
h2_1=0.0
h2_2=0.25
h2_3=0.157025
h2_4=0.333333
h2_5=0.0

fit_function(x)=theoretical_if2(x)
use_theoretical_if2=1

bg_dat_x_0=35.00230861621094
bg_dat_y_0=1.5313784018295837
bg_dat_x_1=40.93558969213867
bg_dat_y_1=1.4422005115644505
bg_dat_x_2=46.52491244482422
bg_dat_y_2=1.366389324226898
bg_dat_x_3=49.878506096435544
bg_dat_y_3=1.3485572573126063
bg_dat_x_4=53.23209974804688
bg_dat_y_4=1.3420150877270653
bg_dat_x_5=58.047516273437495
bg_dat_y_5=1.3500911352817346
bg_dat_x_6=61.05715160180664
bg_dat_y_6=1.310971776700967
bg_dat_x_7=64.06678693017578
bg_dat_y_7=1.2714702803929354
bg_dat_x_8=71.46189087988282
bg_dat_y_8=1.2638645312842591
bg_dat_x_9=72.49376584960937
bg_dat_y_9=1.3500911352817346
bg_dat_x_10=78.4270469255371
bg_dat_y_10=1.2714702803929354
bg_dat_x_11=83.24246345092773
bg_dat_y_11=1.3277697811061842
bg_dat_x_12=88.05787997631836
bg_dat_y_12=1.4080007830451655
bg_dat_x_13=93.38923398657226
bg_dat_y_13=1.4758575147076556
bg_dat_x_14=98.72058799682617
bg_dat_y_14=1.4683943574239549
bg_dat_x_15=99.6664733857422
bg_dat_y_15=1.211883061736299
bg_dat_x_16=103.45001494140625
bg_dat_y_16=1.20463375464768
bg_dat_x_17=107.31954607788086
bg_dat_y_17=1.190264973953291
bg_dat_x_18=111.00612110144043
bg_dat_y_18=1.2020257767689202
bg_dat_x_19=114.692696125
bg_dat_y_19=1.2106992341275
bg_dat_x_20=120.034567
bg_dat_y_20=1.2247464124
use_spline=1
bg_dat_n=21
IF_TH_FT_limit=1e-7
IF_N1=1024
IF_N2=1024
wavelength=0.15406
profile_cutting_parameter=12

use_threads=1
num_threads=4
mwp_init

set terminal x11
set title "data/MSc_labor/DRKM"
set xlabel "Twotheta"
set ylabel "Intensity"
set key left top Left
set samples 20000


set label " 111" at 43.5274904735983, 39.146708952434395
set label " 200" at 50.3048448557431, 29.528057613942302
set label " 220" at 74.1752857920523, 23.444698349726544
set label " 311" at 89.8530212302667, 15.772695421498851
set label " 222" at 95.242242787153, 7.1880484472590993
set label " 400" at 116.853565596081, 2.0508102626643101

set logscale y

bgp_minx=34.564567
bgp_maxx=120.034567

plot [34.564567:120.034567] "data/MSc_labor/DRKM.dat" using 1:2 title "measured data" with lines lt 1, fit_function(x) title "f(x)" with lines lt 2, bgp(x) title "bgp(x)" with lines lt 3

! ./lib/save_gnuplot_x11_pid data/MSc_labor/DRKM

fit [34.564567:120.034567] fit_function(x) "data/MSc_labor/DRKM.weighted.dat" using 1:2:3 via a, b, c, d, e, i_s0_0, i_s0_1, i_s0_2, i_s0_3, i_s0_4, i_s0_5, i_max_0, i_max_1, i_max_2, i_max_3, i_max_4, i_max_5

set nologscale
set terminal postscript
set output "data/MSc_labor/DRKM.int0.ps"
plot [34.564567:120.034567] "data/MSc_labor/DRKM.dat" using 1:2 title "measured data" with lines lt 2, fit_function(x) title "f(x)" with lines lt 1, bgp(x) title "background" with lines lt 3

set logscale y
replot

set nolabel

set terminal table
set nologscale
set output "data/MSc_labor/DRKM.int.th0.dat"
plot [34.564567:120.034567] "data/MSc_labor/DRKM.dat" using 1:2, fit_function(x), bgp(x)


! ./lib/subtract data/MSc_labor/DRKM.dat

set terminal postscript
set output "data/MSc_labor/DRKM.int.bw.ps"
set nologscale

set label " 111" at 43.5274904735983, 39.146708952434395
set label " 200" at 50.3048448557431, 29.528057613942302
set label " 220" at 74.1752857920523, 23.444698349726544
set label " 311" at 89.8530212302667, 15.772695421498851
set label " 222" at 95.242242787153, 7.1880484472590993
set label " 400" at 116.853565596081, 2.0508102626643101

plot [34.564567:120.034567] "data/MSc_labor/DRKM.int.4.dat" using 1:2 title "measured data" with lines lt 2, "data/MSc_labor/DRKM.int.4.dat" using 1:3 title "fitted data" with lines lt 1, "data/MSc_labor/DRKM.int.4.dat" using 1:4 title "difference" with lines lt 3
set logscale y
plot [34.564567:120.034567] "data/MSc_labor/DRKM.int.4.dat" using 1:2 title "measured data" with lines lt 2, "data/MSc_labor/DRKM.int.4.dat" using 1:3 title "fitted data" with lines lt 1, bgp(x) title "background" with lines lt 3

set terminal postscript color
set output "data/MSc_labor/DRKM.int.ps"
set nologscale

set label " 111" at 43.5274904735983, 39.146708952434395
set label " 200" at 50.3048448557431, 29.528057613942302
set label " 220" at 74.1752857920523, 23.444698349726544
set label " 311" at 89.8530212302667, 15.772695421498851
set label " 222" at 95.242242787153, 7.1880484472590993
set label " 400" at 116.853565596081, 2.0508102626643101

plot [34.564567:120.034567] "data/MSc_labor/DRKM.int.4.dat" using 1:2 title "measured data" with lines lt 2, "data/MSc_labor/DRKM.int.4.dat" using 1:3 title "fitted data" with lines lt 1, "data/MSc_labor/DRKM.int.4.dat" using 1:4 title "difference" with lines lt 3
set logscale y
plot [34.564567:120.034567] "data/MSc_labor/DRKM.int.4.dat" using 1:2 title "measured data" with lines lt 2, "data/MSc_labor/DRKM.int.4.dat" using 1:3 title "fitted data" with lines lt 1, bgp(x) title "background" with lines lt 3

print "CMWP_ALL_OK"
