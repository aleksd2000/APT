#!/bin/bash
# Minecraft servers directory tests - 20211207
## VARIABLES
OriginDir=`pwd`
WorkingDir=.
ServersDir=/Servers/
MinecraftDir=/Servers/Minecraft/

## PRE-START TESTS
clear # clear terminal
if [ -z "$1" ]
  then
    echo "Script expects two arguments on command line-exiting"
    exit 1
fi
if [ -z "$2" ]
  then
    echo "Script expects two arguments on command line-exiting"
    exit 1
fi
if [ "$1" != "gh" ]
  then
    echo "Script expects gh as first agument on command line-exiting"
    exit 1
fi
if [ "$2" != "import" ]
  then
    echo "Script expects import as second agument on command line-exiting"
    exit 1
fi
# Test working directory
cd "$WorkingDir" 2>/dev/null || {
  echo "Cannot change to Working Directory $WorkingDir"
  cd "$OriginDir"
  exit 1
}
if [ -d "$ServersDir" ]
then echo "$ServersDir exists."
else
   echo "$ServersDir doesn't exist - exiting"
   cd "$OriginDir"
   exit
fi
if [ -d "$MinecraftDir" ]
then echo "$MinecraftDir exists."
else
   echo "$MinecraftDir doesn't exist - exiting"
   cd "$OriginDir"
   exit
fi

# All tests completed

## MAIN

exit 0

