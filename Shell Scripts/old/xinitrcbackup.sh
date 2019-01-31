#!/bin/bash
#backup script for bashrc using rclone

OF=/home/jan/.xinitrc

rclone copy $OF remote:jan/hei -L

