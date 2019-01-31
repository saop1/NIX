#!/bin/bash
#script for loggføring |
#du trenger (rsync)	


L1=/home/jan/Documents/scripts/testings/use/log/log.txt

OPTIONS="1line 2lines 3lines"
select opt in $OPTIONS; do
	
	
	
if [ "$opt" = "1line" ]; then
	
	echo "TITTEL"
	read R1
	
	echo "Hva har du lært?"
	read R2	
		
		echo "" >> $L1
		echo $R1 >> $L1
		echo $R2 >> $L1
		echo "" >> $L1
		rclone copy $L1 remote:jan/log/ && exit


elif [ "$opt" = "2lines" ]; then
		
	echo "TITTEL"
	read D1

	echo "Hva har du lært?"
	read D2

	echo "Linje 2"
	read D3

		echo "" >> $L1
		echo $D1 >> $L1
		echo $D2 >> $L1
		echo $D3 >> $L1
		echo "" >> $L1
		rclone copy $L1 remote:jan/log/ && exit


elif [ "$opt" = "3lines" ]; then
	
	echo "TITTEL"
	read B1

	echo "Hva har du lært?"
	read B2

	echo "Linje 2"
	read B3

	echo "Linje 3"
	read B4

		echo "" >> $L1
		echo $B1 >> $L1
		echo $B2 >> $L1
		echo $B3 >> $L1
		echo $B4 >> $L1
		echo "" >> $L1
		rclone copy $L1 remote:jan/log/ && exit


	else
		clear
		echo noe gikk galt
	fi
done



