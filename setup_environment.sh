DIRECTORIES=("logs" "configs" "scripts")

echo
echo "Creating directories and files"
echo "------------------------------"

for DIR in "${DIRECTORIES[@]}"; do
	if [ -d "$DIR" ]; then
		echo "Directory already exists: $DIR"
	else
		mkdir -p "$DIR"
		echo "Directory created: $DIR"
	fi
done

echo 
echo


if [ ! -f "logs/system.log" ]; then
	echo "This is where logs lives" >> logs/system.log
	chmod 644 logs/system.log
	echo "File created: logs/ssystem.log"
else
	echo "File already exists: logs/sytem.log"
fi

if [ ! -f "configs/app.conf" ]; then
	echo "Configurations are accomodated here" >>  configs/app.conf
	chmod 444 configs/app.conf
	echo "File created: configs/app.conf"

else
	echo "File already exists: configs/app.conf"
fi

if [ ! -f "scripts/backup.sh" ]; then
	echo "I am the scripts' holder" >> scripts/backup.sh
	chmod 755 scripts/backup.sh
	echo "File created: scripts/backup.sh"
else
	echo " File already exists: scripts/backup.sh"
fi

echo 
echo 
echo "--------------------Results---------------------"
echo

tree */

ls -lR | grep "^-"
echo 
echo "------------------------------------------------"
