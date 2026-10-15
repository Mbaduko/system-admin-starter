#!/bin/bash

DIRECTORIES=("logs" "configs" "scripts")

echo
echo "Creating directories and files"
echo "------------------------------"

for DIR in "${DIRECTORIES[@]}"; do
	if [ -d "$DIR" ]; then
		cho "Directory already exists: $DIR"
	else
		mkdir -p "$DIR"
		echo "Directory created: $DIR"
	fi
done

echo 
echo


if [ ! -f "logs/system.log" ]; then
	echo "This is where logs lives" >> logs/system.log
	ech "File created: logs/system.log"
else
	echo "File already exists: logs/system.log"
fi
chmod 644 logs/system.log

if [ ! -f "configs/app.conf" ]; then
	echo "Configurations are accomodated here" >>  configs/app.conf
	echo "File created: configs/app.conf"
else
	echo "File already exists: configs/app.conf"
fi
chmod 444 configs/app.conf

if [ ! -f "scripts/backup.sh" ]; then
	echo "I am the scripts' holder" >> scripts/backup.sh
	ech "File created: scripts/backup.sh"
else
	echo "File already exists: scripts/backup.sh"
fi
chmod 755 scripts/backup.sh

echo 
echo 
echo "--------------------Results---------------------"
echo

tree */

ls -lR | grep "^-"
echo 
echo "------------------------------------------------"
