#!/bin/bash

#copies use dir

OF=/home/jan/Documents/scripts/testings/use/

rclone copy $OF remote:jan/hei/use -L
