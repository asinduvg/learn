#!/bin/bash

# Author: Asindu Vidanagamachchi
# Date Created: 01/04/2023
# Last Modified: 01/04/2023

# Description
# Backups all the files in home directory and save them all in a .tar archive

# Usage
# backup_script

tar -cvf ~/learn/bash-scripting/1-how-to-build-a-bash-script"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 2>/dev/null

exit 0
