#!/bin/bash
#backup script for bashrc using rclone CHANGED FOR XINIT

#copies the inuse bashrc
OF=/home/jan/.xinitrc
B1=.xinitrc
B2=xinitrc
B3=/home/jan/Downloads

rclone copy $OF remote:jan/hei -L

#copies it
cp $OF $B3/$B2-$(date +%Y%m%d)

#makes backup of that date bashrc#xinit
rclone copy /home/jan/Downloads/$B2-$(date +%Y%m%d) remote:jan/hei/xinit/ -L
