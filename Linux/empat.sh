#!/usr/bin/env bash
dateFormat='+%Y-%m-%d'

read -p "masukan folder yang ingin dibackup " inputFolder

#buat tar
tar  -czf "backupEmpat"`date "$dateFormat"`".tar.gz" $inputFolder


#delete yang lama
listBackup=$( ls -a |grep backupEmpat) #ambil semua backup

dateDihapus=$(date -d '-7 day' $dateFormat)


for backup in $listBackup
do
	backupDate=$(date -d ${backup:11:10} "$dateFormat")
	if [[ $backupDate < $dateDihapus ]];
	then
		#echo $backup
		rm $backup
	fi

done
