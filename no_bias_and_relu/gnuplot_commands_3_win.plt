set term wxt

set datafile separator ","
set xtics 0,240,1920
splot "results_3d_Q.csv" matrix columnheaders rowheaders with lines lt rgb "red" title "Performance(QF)", \
      "results_3d_F.csv" matrix columnheaders rowheaders with lines lt rgb "#009900" title "Performance(FQ)"