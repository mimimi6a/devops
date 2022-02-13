#!/bin/bash

#directory to backup
BACKUPDIRECTORY=$1

#compression algorithm
COMPRESSIONALGORITHM=$2

case $COMPRESSIONALALGORITHM in
	gzip )
		COMPRESSION="cvzf"
		;;
	bzip )
		COMPRESSION="cvjf"
		;;
	xz ) 
		COMPRESSION="cvjf"
		;;
	none )
		COMPRESSION="cvf"
		;;
esac
	
#outpit file name
OUTPUTFILE=$3

#directory comprehension and encription of the results
tar -cvf $COMPRESSION $OUTPUTFILE $BACKUPDIRECTORY | openssl enc -e -aes-256-cbc -out $OUTPUTFILE.enc > /dev/null  2> error.log
