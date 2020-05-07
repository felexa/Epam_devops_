#!/bin/bash
ls -R -l /home/Epam > home/Epam/4.9/4.9.4.txt
var1=$(grep -c "total" /home/Epam/4.9/4.9.4.txt)
echo "В моем домашнем каталоге "$var1" поддиректорий: "$HOME

