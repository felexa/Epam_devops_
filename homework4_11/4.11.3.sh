#!/bin/bash
# date in usefull view %d/%b/%Y
echo $(date +"%d/%b/%Y";uptime|awk '{print $1,$2,$3}'|sed 's/,//')

# user ID 65534 - nobody user
# users with ID < 1000 - system users
awk -F: '{if ($3>=1000 && $3<65534) print $1}' /etc/passwd
