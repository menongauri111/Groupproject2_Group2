## Generating Consensus Sequence for tetraploids ##

#!/bin/bash
#SBATCH --job-name=Ctets
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --time=96:00:00
#SBATCH --cpus-per-task=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --output=/shared/Project2_Resources/Group2/OnE/%CT.out
#SBATCH --error=/shared/Project2_Resources/Group2/OnE/%CT.err

# These steps are required to activate Conda
source $HOME/.bash_profile
conda activate /shared/apps/conda/bio

#Open the working directory

cd /shared/Project2_Resources/Group2/VCFs/For_Students_2023/tetraploids/
# Convert vcfs to bgzipped files and create an index

bgzip Finalg30996_tets.vcf
tabix -p vcf Finalg30996_tets.vcf.gz

bgzip  Finalg38026_tets.vcf
tabix -p vcf  Finalg38026_tets.vcf.gz

bgzip   Finalg40349_tets.vcf
tabix -p vcf Finalg40349_tets.vcf.gz

bgzip  Finalg42720_tets.vcf
tabix -p vcf  Finalg42720_tets.vcf.gz


# Generate consensus with bcftools
samtools faidx /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta Cexcelsa_scaf_3:1049220-1049324 Cexcelsa_scaf_3:1050079-1050171 Cexcelsa_scaf_3:1050268-1050327 Cexcelsa_scaf_3:1050406-1050678 Cexcelsa_scaf_3:1050765-1050839 Cexcelsa_scaf_3:1050914-1050970 Cexcelsa_scaf_3:1051105-1051245 Cexcelsa_scaf_3:1051347-1051397 Cexcelsa_scaf_3:1051519-1051614 Cexcelsa_scaf_3:1051757-1051840 Cexcelsa_scaf_3:1051929-1052030 Cexcelsa_scaf_3:1052150-1052197 Cexcelsa_scaf_3:1052797-1053001 Cexcelsa_scaf_3:1053637-1053676 Cexcelsa_scaf_3:1054102-1054117 | bcftools consensus Finalg30996_tets.vcf.gz -o Finalg30996_tets.fasta

samtools faidx /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta Cexcelsa_scaf_3:41053833-41054048 Cexcelsa_scaf_3:41054135-41054258 Cexcelsa_scaf_3:41054494-41054780 | bcftools consensus Finalg38026_tets.vcf.gz -o Finalg38026_tets.fasta

samtools faidx /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta Cexcelsa_scaf_2:4281577-4281599 Cexcelsa_scaf_2:4281887-4281911 Cexcelsa_scaf_2:4282291-4283763 Cexcelsa_scaf_2:4284271-4284428 Cexcelsa_scaf_2:4284767-4285535 Cexcelsa_scaf_2:4285633-4285779 Cexcelsa_scaf_2:4285874-4286191 Cexcelsa_scaf_2:4286275-4286334 Cexcelsa_scaf_2:4286407-4286588 Cexcelsa_scaf_2:4287213-4287237 Cexcelsa_scaf_2:4287569-4287890 Cexcelsa_scaf_2:4287971-4288143 Cexcelsa_scaf_2:4288226-4288315 Cexcelsa_scaf_2:4288434-4288608 Cexcelsa_scaf_2:4288688-4288872 Cexcelsa_scaf_2:4288966-4289091 Cexcelsa_scaf_2:4289184-4289272 Cexcelsa_scaf_2:4289358-4289397 | bcftools consensus Finalg40349_tets.vcf.gz -o Finalg40349_tets.fasta

samtools faidx /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta Cexcelsa_scaf_2:19237478-19237720 Cexcelsa_scaf_2:19237869-19237910 | bcftools consensus Finalg42720_tets.vcf.gz -o Finalg42720_tets.fasta