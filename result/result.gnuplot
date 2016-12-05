#!/usr/bin/env gnuplot
reset

set size square

set term svg size 500,500 font "Monaco,11" solid
set output "result.svg"

set style data histogram
set style histogram clustered
set boxwidth 0.2 relative
set style fill solid 0 border lt 0

set yrange [0:*]

plot 'result.dat' using ($2):3:xtic(1) title 'Startup time (ms)' with boxes fill solid 0.1 ls 2, \
'' using ($2+0.2):4 title 'Startup time (lazy) (ms)' with boxes fill solid 0.3 ls 2

