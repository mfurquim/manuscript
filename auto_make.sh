#!/bin/bash

inotifywait -q -m -e close_write --include='.*.py' . src/main.py | while read -r path event filename;
do
	echo -e "\n\n\033[1;7;37mRunning Makefile because $path$filename was $event\033[0;1;0m"
	make prepare images
done;
