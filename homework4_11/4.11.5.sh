#!/bin/bash

ps -eo euser,pid,ppid,cmd,%cpu,%mem,rss --sort=-%mem | head -n 6
