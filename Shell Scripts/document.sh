#!/bin/bash

P1=libreoffice
P2=masterpdfeditor4
P3=/home/jan/Documents/scripts/testings/use

OPTIONS="printer adcom printjevel bashbackup docbackup exit"
select opt in $OPTIONS; do



        if [ "$opt" = "printer" ]; then
			$P1 "/home/jan/Documents/Printer kart(1).xlsm"
        
		elif [ "$opt" = "adcom" ]; then
			$P2 "$P3/service_nor.pdf"

		elif [ "$opt" = "printjevel" ]; then
			sh /home/jan/Documents/scripts/testings/use/printer.sh

		elif [ "$opt" = "bashbackup" ]; then
			sh $P3/bashrcbackup.sh

		elif [ "$opt" = "docbackup" ]; then
			sh $P3/docbackup.sh


		elif [ "$opt" = "exit" ]; then
                	exit 
                else
                        clear
                        echo feil
                fi
        done





	else
		echo "$P1 cant be reached"
	fi
