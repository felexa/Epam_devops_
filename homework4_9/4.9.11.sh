#!/bin/bash
echo $PATH |sed 's|.*:||'
echo "$PATH" | sed 's/:/\t/g' | awk '{print $NF}'


