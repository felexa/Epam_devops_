#!/bin/bash
date | awk '{$5==""; print $0}' |\
awk '{t =$2; $2 = $3; $3 = t; print $0}'

