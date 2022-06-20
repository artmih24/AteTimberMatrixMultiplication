#!/bin/bash -e

#./compile.sh

if [ $# -eq 1 ]; then
    if [ $1 -ge 3840 ]; then
        Qconst=192; Lconst=192; Fconst=192; start=24; step=24; end=$1
    else
        Qconst=$1; Lconst=$1; Fconst=$1; start=24; step=24; end=3840
    fi
elif [ $# -eq 2 ]; then
    if [ $2 -ge 64 ]; then
        Qconst=$1; Lconst=$1; Fconst=$1; start=24; step=24; end=$2
    else
        Qconst=$1; Lconst=$1; Fconst=$1; start=$2; step=$2; end=3840
    fi
elif [ $# -eq 3 ]; then
    if [ $3 -ge 3840 ]; then
        Qconst=$1; Lconst=$1; Fconst=$1; start=$2; step=$2; end=$3
    else
        Qconst=$1; Lconst=$2; Fconst=$3; start=24; step=24; end=3840
    fi
elif [ $# -eq 4 ]; then
    if [ $4 -ge 64 ]; then
        Qconst=$1; Lconst=$2; Fconst=$3; start=24; step=24; end=$4
    else
        Qconst=$1; Lconst=$2; Fconst=$3; start=$4; step=$4; end=3840
    fi
elif [ $# -eq 5 ]; then
    if [ $5 -ge 64 ]; then
        Qconst=$1; Lconst=$2; Fconst=$3; start=$4; step=$4; end=$5
    else
        Qconst=$1; Lconst=$2; Fconst=$3; start=$4; step=$5; end=3840
    fi
elif [ $# -eq 6 ]; then
    Qconst=$1; Lconst=$2; Fconst=$3; start=$4; step=$5; end=$6
else
    Qconst=192; Lconst=192; Fconst=192; start=24; step=24; end=3840
    echo "Default values"
    if [ $# -ne 0 ]; then
        echo "Wrong number of arguments!"
    fi
fi

echo "const Q = "$Qconst", L = "$Lconst", F = "$Fconst
echo "start = "$start", step = "$step", end = "$end
echo "launched at "$(date +"%T")

echo "Q/L/F,Performance(Q),Performance(L),Performance(F)" > 'results.csv'

startTime=$(date +%s)

for (( i=$start; i<=$end; i+=$step )); do
    PerformanceQ=$(./a.out $i $Lconst $Fconst)
    PerformanceL=$(./a.out $Qconst $i $Fconst)
    PerformanceF=$(./a.out $Qconst $Lconst $i)
    echo $i","$PerformanceQ","$PerformanceL","$PerformanceF >> 'results.csv'
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