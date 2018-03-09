#!/bin/bash

#SBATCH --partition=accel
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=2
#SBATCH --gres=gpu:2
#SBATCH --mem=62G
#SBATCH --time=02-00
#SBATCH --job-name=music_melody_test1
#SBATCH -o tensor_%N_%j.out
#SBATCH -e tensor_%N_%j.err
#SBATCH --mail-type=ALL

module load python/2.7.12_intel-2017_update-1

source activate music

export OMP_NUM_THREADS=1

echo "music_interval_all_cells bashintervalugrnnlayersexperimet"
./bashintervalugrnnlayersexperimet.sh
