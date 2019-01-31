#!/bin/bash

echo "IP? feks.10.247.168.*"
read IP

sudo nmap -sP $IP

