#!/bin/bash
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:10:00
#SBATCH --partition=physical
#SBATCH --output=2n16c-20.out

# Load required modules
# module load OpenMPI/1.10.2-GCC-4.9.2
module load GCC/6.2.0
module load OpenMPI/1.10.2-intel-2017.u2

# Compile with OpenMP directives
# gcc -o3 -o mandelbrot main.cpp -lstdc++ -fopenmp
mpicc -fopenmp -o 16c-20 main.cpp


# Execute the programs
mpirun ./16c-20 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000 -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000

