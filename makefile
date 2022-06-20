CFLAGS = -O3 -ffast -ffast-math -mcpu=elbrus-v5

all: main.o functions.o elbrusfunctions.o
	l++ $(CFLAGS) -fopenmp main.o functions.o elbrusfunctions.o -o a.out

main.o: main.cpp
	l++ $(CFLAGS) -c main.cpp

functions.o: functions.cpp
	l++ $(CFLAGS) -c functions.cpp

elbrusfunctions.o: elbrusfunctions.cpp
	l++ $(CFLAGS) -fopenmp -c elbrusfunctions.cpp

clean:
	rm -rf *.o a.out

asm:
	l++ -ffast -ffast-math -faligned -O3 -mcpu=elbrus-v5 -S elbrusfunctions.cpp
	