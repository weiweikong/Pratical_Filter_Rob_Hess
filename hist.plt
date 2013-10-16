set terminal post eps color solid 18
set output "hist.eps"
set xlabel "Bin"
set ylabel "Normalized value"
set xrange [0:110]
unset key
plot "hist_00.dat" with boxes fill solid
set output
set terminal pop
