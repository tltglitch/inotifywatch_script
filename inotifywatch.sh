#!/bin/bash

#Watchdog script using inotifywatch

#monitors 2 directories // can add more or remove as needed.

# 2022


 

fromdir=/mnt/recordings  #replace with directory to monitor

fromdir2=/root/scripts  #replace with directory to monitor

logfile=watch.log

otherlog=no_watch.log

now=$(date)


inotifywait -m -e delete -e close_write -e create -e open -e close "$fromdir" |


while read dir ev file; do

  if [ "$ev" = "DELETE" ] || [ "$ev" = "DELETE" ]; then

    echo "Watchdog Log: User '$USER' deleted the file '$file' in the '$dir' directory - $now" >> $logfile

 elif [ "$ev" = "CREATE" ]; then 

    echo "Watchdog Log: User '$USER' created the file '$file' in the '$dir' directory - $now" >> $logfile

 elif [ "$ev" = "OPEN" ]; then 

    echo "Watchdog Log: User '$USER' opened the file '$file' in the '$dir' directory - $now" >> $logfile

 elif [ "$ev" = "CLOSE" ]; then 

    echo "Watchdog Log: User '$USER' closed  the '$file' in the '$dir' directory - $now" >> $logfile

 elif [ "$ev" = "MODIFY" ]; then 

    echo "Watchdog Log: User '$USER' modified the '$file' in the '$dir' directory - $now" >> $logfile

 elif [ "$ev" = "ACCESS" ]; then 

    echo "Watchdog Log: User '$USER' accessed the file '$file' in the '$dir' directory - $now" >> $logfile

 elif [ "$ev" = "CLOSE" ]; then

    echo "Watchdog Log: User '$USER' closed the file '$file' in the '$dir' directory - $now" >> $logfile

 elif [ "$ev" = "OPEN,ISDIR" ]; then

 echo "Watchdog Log: User '$USER' viewed the contents of the directory '$dir' using the 'ls' command - $now" >> $logfile


else

  

    echo "Watchdog Log: Other event $ev performed on file by $USER in the '$dir' directory - $now" >> $otherlog

  fi

 done

