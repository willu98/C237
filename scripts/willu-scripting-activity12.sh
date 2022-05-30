#1/bin/sh
cd ~/C237/scripts

if [[ $(grep -Fxf $1 $2) == "" ]]
then
	echo NO MATCH
else
	echo MATCH
fi

