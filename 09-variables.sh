#!/bin/bash

sleep 10

starttime=$(date +%s)

endtime=$(date +%s)

totaltime=$(($endtime-$starttime))

echo $totaltime