#!/bin/bash

## this script checks if a file exists, then also checks it backup is exists if not then it creates.

echo "Enter a name of file you want: "
read name

if [ -f "$name" ]; then
	date=$(date +%F)
	backup="$name.bak_$date"
	

	if [ -f "$backup" ]; then
		echo "Backup already exists: $backup"
	else
		cp "$name" "$backup"
		echo "Backup created: $backup"
	fi


else
	echo "file not found"
fi
