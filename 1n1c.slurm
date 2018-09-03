#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --time=00:10:00
#SBATCH --partition=physical
#SBATCH --output=1n1c.out

# Load required modules
module load OpenMPI/1.10.2-GCC-4.9.2


# Compile with OpenMP and MPI directives
# gcc -o3 -o graph.exe graph.cpp -lstdc++ -fopenmp
mpif90 -fopenmp -o mandelbrot main.cpp

# Execute the programs
mpirun -np 2 ./mandelbrot -2.0 1.0 -1.0 1.0 100 10000
