#!/bin/bash
# script for å sjekke på skrivera



OPTIONS="elev adm"
if [ "opt" = "elev" ]; then

echo Hvilken skriver? tjuverinr
read PRINT

P1=PR-VBOR-$PRINT.print.mrfylke.no
P2=PR-VBOR-$PRINT.borgund.adm

if
		ping $P1 -c 3; then


OPTIONS="firefox exit"
select opt in $OPTIONS; do



        if [ "$opt" = "firefox" ]; then
			firefox $P1
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
