#!/bin/bash

############################
# Input. Use your own data #
############################
PREFIX="USUV"

##################################
# Alignment. MAFFT version 7.505 #
##################################

mafft --auto ${PREFIX}.fasta > ${PREFIX}_aligned.faa


#####################################
# Cleaning. TrimAl version 1.5.rev1 #
#####################################

trimal -in ${PREFIX}_aligned.faa -out ${PREFIX}_trimmed.faa -automated1


########################################
# Tree creation. IQ-TREE version 3.0.1 #
########################################

iqtree3 -s ${PREFIX}_trimmed.faa -m MFP -bb 1000 -alrt 1000 -nt AUTO


