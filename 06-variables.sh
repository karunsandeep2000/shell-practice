#!/bin/bash

Starttime=$(date +%s)

echo "time starts at $Starttime"

sleep 10

Endtime=$(date +%s)

echo "time ends at $Endtime"

Totaltime=$(($Endtime-$Starttime))

echo "Time ends in $Totaltime Seconds"