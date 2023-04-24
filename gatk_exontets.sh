## Generating VCFs for tetraplois population containing only biallelic SNPs at AF > 50% (majority) in the exons ##

#!/bin/bash
#SBATCH --job-name=Gtets
#SBATCH --partition=hpc
#SBATCH --nodes=1
#SBATCH --time=96:00:00
#SBATCH --cpus-per-task=8
#SBATCH --ntasks-per-node=1
#SBATCH --mem=30g
#SBATCH --output=/shared/Project2_Resources/Group2/OnE/%Gtets.out
#SBATCH --error=/shared/Project2_Resources/Group2/OnE/%Gtets.err

# These steps are required to activate Conda
source $HOME/.bash_profile
conda activate  /shared/Project2_Resources/Group2/envs/4

#use gatk to filter gene of interest

gatk SelectVariants \
        -R /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta \
        -V /shared/Project2_Resources/Group2/VCFs/For_Students_2023/UK_scan_tets.vcf \
        -L Cexcelsa_scaf_2:19237478-19237720 \
        -L Cexcelsa_scaf_2:19237869-19237910 \
        --restrict-alleles-to BIALLELIC \
        -select "AF>0.5" \
        -O /shared/Project2_Resources/Group2/VCFs/For_Students_2023/tetraploids/Finalg42720_tets.vcf

gatk SelectVariants \
        -R /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta \
        -V /shared/Project2_Resources/Group2/VCFs/For_Students_2023/UK_scan_tets.vcf \
        -L Cexcelsa_scaf_2:4281577-4281599 \
        -L Cexcelsa_scaf_2:4281887-4281911 \
        -L Cexcelsa_scaf_2:4282291-4283763 \
        -L Cexcelsa_scaf_2:4284271-4284428 \
        -L Cexcelsa_scaf_2:4284767-4285535 \
        -L Cexcelsa_scaf_2:4285633-4285779 \
        -L Cexcelsa_scaf_2:4285874-4286191 \
        -L Cexcelsa_scaf_2:4286275-4286334 \
        -L Cexcelsa_scaf_2:4286407-4286588 \
        -L Cexcelsa_scaf_2:4287213-4287237 \
        -L Cexcelsa_scaf_2:4287569-4287890 \
        -L Cexcelsa_scaf_2:4287971-4288143 \
        -L Cexcelsa_scaf_2:4288226-4288315 \
        -L Cexcelsa_scaf_2:4288434-4288608 \
        -L Cexcelsa_scaf_2:4288688-4288872 \
        -L Cexcelsa_scaf_2:4288966-4289091 \
        -L Cexcelsa_scaf_2:4289184-4289272 \
        -L Cexcelsa_scaf_2:4289358-4289397 \
        --restrict-alleles-to BIALLELIC \
        -select "AF>0.5" \
        -O /shared/Project2_Resources/Group2/VCFs/For_Students_2023/tetraploids/Finalg40349_tets.vcf


gatk SelectVariants \
        -R /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta \
        -V /shared/Project2_Resources/Group2/VCFs/For_Students_2023/UK_scan_tets.vcf \
        -L Cexcelsa_scaf_3:41053833-41054048 \
        -L Cexcelsa_scaf_3:41054135-41054258 \
        -L Cexcelsa_scaf_3:41054494-41054780 \
        --restrict-alleles-to BIALLELIC \
        -select "AF>0.5" \
        -O /shared/Project2_Resources/Group2/VCFs/For_Students_2023/tetraploids/Finalg38026_tets.vcf

gatk SelectVariants \
        -R /shared/Project2_Resources/Group2/Reference_Genome/C_excelsa_V5.fasta \
        -V /shared/Project2_Resources/Group2/VCFs/For_Students_2023/UK_scan_tets.vcf \
        -L Cexcelsa_scaf_3:1049220-1049324 \
        -L Cexcelsa_scaf_3:1050079-1050171 \
        -L Cexcelsa_scaf_3:1050268-1050327 \
        -L Cexcelsa_scaf_3:1050406-1050678 \
        -L Cexcelsa_scaf_3:1050765-1050839 \
        -L Cexcelsa_scaf_3:1050914-1050970 \
        -L Cexcelsa_scaf_3:1051105-1051245 \
        -L Cexcelsa_scaf_3:1051347-1051397 \
        -L Cexcelsa_scaf_3:1051519-1051614 \
        -L Cexcelsa_scaf_3:1051757-1051840 \
        -L Cexcelsa_scaf_3:1051929-1052030 \
        -L Cexcelsa_scaf_3:1052150-1052197 \
        -L Cexcelsa_scaf_3:1052797-1053001 \
        -L Cexcelsa_scaf_3:1053637-1053676 \
        -L Cexcelsa_scaf_3:1054102-1054117 \
        --restrict-alleles-to BIALLELIC \
        -select "AF>0.5" \
        -O /shared/Project2_Resources/Group2/VCFs/For_Students_2023/tetraploids/Finalg30996_tets.vcf