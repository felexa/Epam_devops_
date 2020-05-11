#/bin/bash
clear
echo "	Change the directory"
cd /home
echo "	You are in `pwd`"
echo
set -r
echo " ====>GOD MODE ENABLED<===="
echo
read -p "	What do you want to find? " w
echo
read -p "	Where? " f
echo
read -p "	How many strings? " n
echo

# main
function func {
grep "$w" "$f" | head -n "$n" | sort | cat -n
}
# check $w
if [[ -z "$w" ]]
then echo "error: You didn't write what do you want to find!"
else echo
fi
# check $f
if [[ -z "$f" ]]
then echo "error: You didn't write the path of the file!"
else echo
fi
# check $n and run main
if ( echo "$n" | grep -E -q "^?[0-9]+$" ) 
then func
else  echo "error: Not a number in How many strings do you want to see?!"
fi
