#!/bin/sh
cd ~/C237/scripts
echo Only in file 1:
grep -Fvf a13_2.txt a13_1.txt

echo Only in file 2:
grep -Fvf a13_1.txt a13_2.txt


