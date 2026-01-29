#!/bin/bash

Starttime=$(date +%s)

echo "time starts in $Starttime"

sleep 10

Endtime=$(date +%s)

Totaltime=$(($Endtime-$Starttime))

echo "Time ends in $Totaltime"