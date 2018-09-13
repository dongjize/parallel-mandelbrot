mpicc -fopenmp -o mandelbrot main.cpp
mpirun ./mandelbrot -2.0 1.0 -1.0 1.0 100 10000

## Example of Slurm (4 nodes * 8 cores)
```
#!/bin/bash
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=8
#SBATCH --time=00:10:00
#SBATCH --partition=physical
#SBATCH --output=4n32c-20.out

# Load required modules
module load GCC/6.2.0
module load OpenMPI/1.10.2-intel-2017.u2

# Compile with OpenMP directives
mpicc -fopenmp -o mandelbrot main.cpp

# Execute the programs
mpirun ./mandelbrot -2.0 1.0 -1.0 1.0 100 10000 -1 1.0 0.0 1.0 100 10000
```
If running by single node, change `--nodes=4` to `--nodes=1`, `--ntasks-per-node = 8` into `--ntasks=8`
