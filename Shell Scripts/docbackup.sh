#!/bin/bash

OF=/var/backup-documents-$(date +%Y%m%d).tgz

sudo tar -czvf $OF /home/jan/Documents/

rclone copy /var/backup-documents-$(date +%Y%m%d.tgz) remote:jan -L

