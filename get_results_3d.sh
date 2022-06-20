#!/bin/bash -e

echo "launched at "$(date +"%T")

#echo "Q/L/F,Performance(Q),Performance(L),Performance(F)" > 'results_6_8.csv'

startTime=$(date +%s)

Qconst=1920
Lconst=1920
Fconst=1920

size=24
maxsize=1920

str1='Q/F'
for (( f=$size; f<=$maxsize; f+=$size )); do
    str1=$str1','$f
done
echo $str1 > 'results_3d.csv'

for (( q=$size; q<=$maxsize; q+=$size )); do
    str=$q
    for (( f=$size; f<=$maxsize; f+=$size )); do
        Performance=$(./a.out $q $Lconst $f)
        str=$str','$Performance
    done
    echo $str >> 'results_3d.csv'
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