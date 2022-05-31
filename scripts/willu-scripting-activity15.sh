#!/bin/sh
LOG_DIRECTORY=~/C237/scripts/logs
FILE_NAME="log"`date "+%Y%m%d%H%M%S"`".log"
if [ -d ~/FixGen/Logs ]
then
	echo Directory FixGen/Logs exists >> $LOG_DIRECTORY/$FILE_NAME
else
	echo Directory FixGen/Logs does not exist, creating directory >> $LOG_DIRECTORY/$FILE_NAME
	mkdir -p ~/FixGen/Logs
fi

echo Moving to directory >> $LOG_DIRECTORY/$FILE_NAME 
cd ~/FixGen/Logs
echo Compressing logs >> $LOG_DIRECTORY/$FILE_NAME
tar -cvf old_logs.tar $(ls -t | tail -n +4)
echo Running fixGenerator.sh >> $LOG_DIRECTORY/$FILE_NAME

~/FixGen/fixGenerator.sh &

exit 0
