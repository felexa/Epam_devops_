#!/bin/bash
awk  '$9 ~ /[0-9]/ {print $9 }' /home/Epam/4.8/4.8.1.txt > /home/Epam/4.8/4.8.5.txt
