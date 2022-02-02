#!/bin/bash

#directory to backup
BACKUPDIRECTORY=$1

#compression algorithm
COMPRESSIONALGORITHM=$2

#outpit file name
OUTPUTFILE=$3

#directory comprehension and encription of the results
tar $COMPRESSIONALGORITHM $OUTPUTFILE $BACKUPDIRECTORY | openssl enc -e -aes-256-cbc -out $OUTPUTFILE.enc 2> error.log
