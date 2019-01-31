#!/bin/bash
#backup script for bashrc using rclone

#copies the inuse bashrc
OF=/home/jan/.bashrc
B1=.bashrc
B2=bashrc
B3=/home/jan/Downloads

rclone copy $OF remote:jan/hei -L

#copies it
cp $OF $B3/$B2-$(date +%Y%m%d)

#makes backup of that date bashrc
rclone copy /home/jan/Downloads/$B2-$(date +%Y%m%d) remote:jan/hei/bash/ -L
