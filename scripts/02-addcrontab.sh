#! /bin/bash

(crontab -l ; echo "* * * * *	ping -c3 192.168.11.1 | while read line; do echo `date` - $line; done | /usr/bin/logger -t pingtest") | crontab -
