#!/bin/bash
#SBATCH --job-name=Txt-bed
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --time=96:00:00
#SBATCH --cpus-per-task=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --output=/shared/Project2_Resources/Group2/OnE/%txt-bed.out
#SBATCH --error=/shared/Project2_Resources/Group2/OnE/%txt-bed.err

# These steps are required to activate Conda
source $HOME/.bash_profile
# Check that the correct number of arguments have been provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input.txt output.bed"
    exit 1
fi

# Read the input file and create the BED file
while read line; do
    chrom=$(echo "$line" | cut -f 1)
    start=$(echo "$line" | cut -f 4)
    end=$(echo "$line" | cut -f 5)
    gene=$(echo "$line" | cut -f 9)
    echo -e "$chrom\t$start\t$end\t$gene" >> "$2"
done < "$1"