#!/bin/bash

# Author: Asindu Vidanagamachchi
# Date Created: 02/04/2023
# Last Modified: 02/04/2023

# Description
# Backups all the files in home directory and save them all in a .tar archive

# Usage
# backup_script

echo "Hello ${USER^}"
echo "I will now backup your home directory, $HOME"
currentDir=$(pwd)
echo "You are running this script from $currentDir."
echo "Therefore, I will save the backup in $currentDir"
tar -cf $currentDir/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME/* 2>/dev/null
echo "Backup Completed Successfully."
exit 0