#!/bin/bash -e

echo "launched at "$(date +"%T")

echo "Q/L/F,Performance(Q),Performance(L),Performance(F)" > 'results_6_8.csv'

startTime=$(date +%s)

Qconst=192
Lconst=192
Fconst=192

size=24

while [ $size -lt 3840 ]; do
    mod6=$(($size % 6))
    if [ $mod6 -eq 0 ]; then
        PerformanceQ=$(./a.out $size $Lconst $Fconst)
    else
        PerformanceQ=""
    fi
    PerformanceL=$(./a.out $Qconst $size $Fconst)
    mod8=$(($size % 8))
    if [ $mod8 -eq 0 ]; then
        PerformanceF=$(./a.out $Qconst $Lconst $size)
    else
        PerformanceF=""
    fi
    echo $size","$PerformanceQ","$PerformanceL","$PerformanceF >> 'results_6_8.csv'
    size=$(($size + 2))
done

endTime=$(date +%s)
timeDiffSeconds=$(($endTime - $startTime))
timeDiffMinutes=$(($timeDiffSeconds / 60))
if [ $timeDiffMinutes -gt 0 ]; then
    timeDiffSeconds=$(($timeDiffSeconds % 60))
    if [ $timeDiffSeconds -lt 10 ]; then
        timeDiffSeconds="0"$timeDiffSeconds
    fi
    printf '\033[1A'
    echo "time spent: "$timeDiffMinutes" m "$timeDiffSeconds" s"
else
    printf '\033[1A'
    echo "time spent: "$timeDiffSeconds" s     "
fi