#!/usr/local/bin/gnuplot --persist

set term wxt

#set multiplot layout 2,2 rowsfirst
#print "---- Gnuplot script ----"
end = ARG1
step = ARG2
if (end eq "") {
     end = 7680
     print "default end = ", end
}
else {
     print "end = ", end
}
if (step eq "") {
     step = 96
     print "default step = ", step
}
else {
     if (step % 24 != 0) {
          step = step * 2
     }
     print "step = ", step
}
set xtics 0,step,end
#set ytics 0,5,100
set ytics 0,50,1600
#set yrange [0:100]
set yrange [0:1600]
set grid
set datafile separator ","
plot "results.csv" using 1:2 with lines lt rgb "red" title columnhead, \
     "results.csv" using 1:3 with lines lt rgb "#009900" title columnhead, \
     "results.csv" using 1:4 with lines lt rgb "blue" title columnhead