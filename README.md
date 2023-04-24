# Groupproject2_Group2
Structure Homology Modelling and Functional Predictions

From the data provided for the group work, we filter out the genes of interest and then we grep out the exons into a text file which is then converted to a bed file for further use.

Then we generated VCFs of genes of interest for both diploid and tetraploid population containing only biallelic SNPs at AF>50% in the exons using GATK (version 4).
Later those VCFs are used to create consensus sequences using bcftools (The versions used are samtools 1.16.1)

We analysed the datas provided in IGV (IGV_2.16.0) and understood the orientation of the sequences and later translated the consensus sequences obtained using ExPASY software.

The translated sequences are then given to the Alphafold Colab (alphaFold.ipynb - Colaboratory) to obtain the prediction. 
Here we used the highly translated sequence of the genes for the smooth running of the softwarea as the whole translated sequences resulted in errors and incompletion for the large files while those of smaller ones gave results.
Final prediction obtained for the genes are analysed using PyMol (PyMOL 2.5.4) to provide structural homologs and is further studied to note the changes in both tetraploids and diploids.

Also we used CLUSTAL Omega to spot the areas of changes and understand if its a frameshift mutation, insertion, or deletion.
