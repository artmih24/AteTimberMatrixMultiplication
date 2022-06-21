set term wxt

set datafile separator ","
set xtics 0,240,1920
splot "results_3d.csv" matrix columnheaders rowheaders with lines lt rgb "red" title "Performance(QF)"