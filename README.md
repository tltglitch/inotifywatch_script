# inotifywatch_script

#BASH script used to monitor directory files using inotifywatch-tools

This script specificaly monitors for delete, close_write, create, open, close but also logs other events in the no_watch.log file that will be created.

Installation requirements:

1. Download the script using -> https://github.com/tltglitch/inotifywatch_script.git
2. Replace the "fromdir" or "fromdir2" variable with the directory you intend to watch. "fromdir2" can be commented out if not needed from the variable declaration and the code.
3. Make requirements.txt executable using command: -> chmod +x requirements.txt
4. install the prerquities or dependencies by running command -> ./requirements.txt
5. Make script executable using command: -> chmod +x inotifywatch_script.sh
6. Run script -> ./inotifywatch_script.sh
The script will generate a log file named "watch.log" in thesame directory the script is running from after first run. This log file keeps track of changes made to file files.

#Enjoy
