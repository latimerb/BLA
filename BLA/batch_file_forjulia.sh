#!/bin/bash

##SBATCH --partition normal
#SBATCH --nodes=10
##SBATCH -A TG-CCR140046
#SBATCH --ntasks-per-node=72
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=4G

#SBATCH --time 0-12:00
#SBATCH --qos=normal
#SBATCH --job-name=BLA_HOC
#SBATCH --output=results-BLA-auto-%j.out

mpirun nrniv -mpi BLA_main_Drew_reordingimem_simplify_big_saveLFPimem_noDANE_extrinsic_NSG_vecstim_invivo_multielec.hoc
