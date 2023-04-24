# Groupproject2_Group2
Structure Homology Modelling and Functional Predictions

From the data provided for the group work, we fileter out the genes of interest and then we grep out the exons into a text file which is then converted to a bed file for further use.

Then we generated VCFs of genes of interest for both diploid and tetraploid population containing only biallelic SNPs at AF>50% in the exons
Later those VCFs are used to create consensus sequences using bcftools

We analysed the datas provided in IGV and understood the orientation of the sequences and later translated the consensus sequences obtained using ExPASY software.

The translated sequences are then given to the Alphafold Colab to obtain the prediction. 
Here we used the highly translated sequence of the genes for the smooth running of the softwarea as the whole translated sequences resulted in errors and incompletion for the large files while those of smaller ones gave results.
Final prediction obtained for the genes are analysed using PyMol to provide structural homologs and is further studied to note the changes in both tetraploids and diploids.

Also we used CLUSTAL Omega to spot the areas of changes and understand if its a frameshift mutation, insertion, or deletion.
