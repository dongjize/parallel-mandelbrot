Compile:
```$xslt
mpicc -fopenmp -o mandelbrot main.cpp
```

Run:
```$xslt
mpirun -np 2 ./mandelbrot -2.0 1.0 -1.0 1.0 100 10000
```
(-np 2 can be replaced by another number of processors, or can be ignored)
