#!/bin/sh
cd ~/C237/scripts
echo Only in file 1:
awk 'FNR==NR{a[$0]=1;next}!($0 in a)' a13_2.txt a13_1.txt
echo Only in file 2:
awk 'FNR==NR{a[$0]=1;next}!($0 in a)' a13_1.txt a13_2.txt

