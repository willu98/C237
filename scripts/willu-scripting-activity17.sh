#!/bin/sh
FILE=$1.csv
DIRECTORY=~/C237/scripts/a17_dir
mkdir -p $DIRECTORY
echo Client, Message type, stock, quantity, price, side, order id, last quantity, exec id, last price >> $DIRECTORY/$FILE

cd ~/FixGen/Logs
cat $1 | while read line
do
        
done
