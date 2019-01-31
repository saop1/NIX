#!/bin/bash
#backup before shutdown script

if
		sh /home/jan/Documents/scripts/testings/use/bashrcbackup.sh
		sh /home/jan/Documents/scripts/testings/use/newxinitbackup.sh
		sh /home/jan/Documents/scripts/testings/use/docbackup.sh
		sh /home/jan/Documents/scripts/testings/use/usebackup.sh
	then
		shutdown -h now
fi


