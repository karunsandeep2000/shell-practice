#!/bin/bash

Starttime= $(date+%s)

echo "time starts in $Starttime"

sleep10

Endtime= $(date+%s)

Totaltime= ( $Endtime-$Starttime )

echo "Time ends in $Totaltime"