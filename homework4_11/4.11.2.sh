#!/bin/bash

echo "User's home directory"
echo "<$USER>"
echo "Contains regular files:"
find ~ -type f \! -name ".*" | wc -l
echo "Hidden files:"
find ~ -type f -name ".*" | wc -l
