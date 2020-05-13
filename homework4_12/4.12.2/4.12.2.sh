#!/bin/bash
while :
do
if [ "$var1" == "0" ]
then
sleep 5
md5sum -c /home/Epam/4.12/4.12.2/checksum.md5
var1="$?"
md5sum * */* 2>/dev/null > /home/Epam/4.12/4.12.2/checksum.md5
echo "var1= "$var1
else
#arch
tar -zcf /home/Epam/4.12/4.12.2/arc_$(date +%d%m%y,%T).tgz /home/Epam/4.12/4.12.2
#recompile
make -f Makefile-2 clean
#check  md5
md5sum * */* 2>/dev/null > /home/Epam/4.12/4.12.2/checksum.md5
sleep 5 
#check md5
md5sum -c /home/Epam/4.12/4.12.2/checksum.md5
#0-zero, 1-new var
var1="$?"
echo "var1= "$var1
fi
done

