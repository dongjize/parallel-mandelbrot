Compile:
```$xslt
mpif90 -fopenmp -o main main.cpp
```

Run:
```$xslt
mpirun -np 2 ./main -2.0 1.0 -1.0 1.0 100 10000
```
(-np 2 can be replaced by another number of processors)