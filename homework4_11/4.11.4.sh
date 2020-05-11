#!/bin/bash

echo "User's processes:"
echo "<$USER>"
ps -u $USER | sed '1d' | wc -l
echo "root user processes:"
ps -u root | sed '1d' | wc -l
