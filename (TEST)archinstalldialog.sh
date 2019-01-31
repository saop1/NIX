#!/bin/bash
HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="Hackermanngyt44"
TITLE="Nødvendigheter for AUR/arch based"
MENU="Ka du vil gyt:"

OPTIONS=(1 "Upgrade"
         2 "yaourt"
         3 "grunnpaka"
	 4 "i3-gaps"
	 5 "Option 5"
	 6 "Option 6"
	 7 "Option 7"
	 8 "Steam fix"
	 9 "Option 9"
	 10 "Option 10"
	 11 "Option 11")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
#oppdaterer pacman
            sudo pacman -Syu
            ;;
        2)
#to forskjellige måter å skaffe yaourt på		
OPTIONS="Pac-S Pacmanconf"
select opt in $OPTIONS; do



        if [ "$opt" = "Pac-S" ]; then
       sudo pacman -S yaourt
	elif [ "$opt" = "Pacmanconf" ]; then
echo "[archlinuxfr]
SigLevel = Never
Server = http://repo.archlinux.fr/$arch" >> /etc/pacman.conf && pacman -Syu && pacman -S yaourt
       	else
          clear
          echo bad option
                fi
        done

	    ;;
	3)
            #installerer pakker som jeg alltid installerer manuellt på fresh install
	    sudo pacman -S mpv pavucontrol feh vim termite htop firefox
            ;;
	4)
#to forskjellige måter å installere/skaffe i3-gaps på
OPTIONS="Pacman Yaourt"
select opt in $OPTIONS; do



        if [ "$opt" = "Pacman" ]; then
                sudo pacman -S i3-gaps
        elif [ "$opt" = "Yaourt" ]; then
                yaourt -S i3-gaps 
                else
                        clear
                        echo gyt
                fi
        done
	;;
        5)
            echo "You chose Option 5"
            ;;
        6)
            echo "You chose Option 6"
            ;;
        7)   
	    echo "You chose Option 7"
            ;;
        8)
            rm ~/.local/share/Steam/ubuntu12_32/steam-runtime/i386/usr/lib/i386-linux-gnu/libstdc++.so.6 && > find ~/.steam/root/ -name "libgpg-error.so*" -print -delete
            ;;
        9)
            echo "You chose Option 9"
            ;;
	10)
            echo "You chose Option 10"
            ;;
        11)
            echo "You chose Option 11"
            ;;
esac
