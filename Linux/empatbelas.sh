#!/usr/bin/env bash


filename="logingEmpatbelas.txt"
test -f $filename || (touch $filename ; echo "creating file ${filename}")



while [ 1==1 ]; #loop for evernya
do
	#data tiap 1 detik selama 60 iteration
	data=$(sar -u 1 5 |grep "Average" |awk '{print 100-$8}')
	#echo $data 
	if [ $data>75.00 ];
	then
		date=$(date '+%Y-%m-%d %H:%M:%S')
		echo "CPU Usage HIGH. on: ${date} at value: ${data}" >> $filename
	fi
done
