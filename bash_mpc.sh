#!/bin/bash
#SBATCH --time=00:05:00
#SBATCH --account=rrg-gberseth
#SBATCH --mem=8G
#SBATCH --array=0-150

source ~/projects/def-p091698/philmais/MARL_env/bin/activate
wandb login ffc4dae1829b4322e69033367de06ddd9f13a7c4
wandb agent marl-dr/ProofConcept/1cyz24nn
