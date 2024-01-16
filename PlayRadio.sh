#!/bin/bash
online=false
dointro=true
dobreakfast=true
dolunch=true
dodinner=true
currtime=$(date +%H%M)

if [ $currtime -gt 600 ];
then
	dointro=false
	online=true
	echo "Skipping intro..."
fi
if [ $currtime -gt 900 ];
then
	dobreakfast=false
	echo "Skipping breakfast..."
fi
if [ $currtime -gt 1200 ];
then
	dolunch=false
	echo "Skipping lunch..."
fi
if [ $currtime -gt 1800 ];
then
	echo "Skipping dinner..."
	dodinner=false
fi

while :
do
	currtime=$(date +%H%M)
	if $online
	then
		echo "Current time is:" $currtime
		if $dobreakfast && [ $currtime -gt 900 ];
		then
			bash internal/tooling/TTSSpeak.sh "It is now time for breakfast"
			sleep 5
			bash internal/tooling/TTSSpeak.sh "In the name of the father, and of the son, and of the holy spirit. Bless us O Lord and these Thy gifts, which we are about to receive from Thy bounty. Through Christ, our Lord. Amen."
			dobreakfast=false
			echo "Sleeping 1 hour for breakfast..."
			sleep 3600
			bash internal/tooling/TTSSpeak.sh "Breakfast is now over. Go forth to do Gods will."
		elif $dolunch && [ $currtime -gt 1200 ];
                then
			bash internal/tooling/TTSSpeak.sh "It is now time for lunch"
			sleep 5
			bash internal/tooling/TTSSpeak.sh "In the name of the father, and of the son, and of the holy spirit. Bless us O Lord and these Thy gifts, which we are about to receive from Thy bounty. Through Christ, our Lord. Amen."
			dolunch=false
			echo "Sleeping 1 hour for breakfast..."
			sleep 3600
                        bash internal/tooling/TTSSpeak.sh "Lunch is now over. Go forth to do Gods will."
		elif $dolunch && [ $currtime -gt 1800 ];
                then
			bash internal/tooling/TTSSpeak.sh "It is now time for dinner"
			sleep 5
			bash internal/tooling/TTSSpeak.sh "In the name of the father, and of the son, and of the holy spirit. Bless us O Lord and these Thy gifts, which we are about to receive from Thy bounty. Through Christ, our Lord. Amen."
			dodinner=false
			echo "Sleeping 1 hour for dinner..."
			sleep 3600
		elif $dolunch && [ $currtime -gt 1900 ];
                then
			bash internal/tooling/TTSSpeak.sh "Thank you for tuning in. Dinner is now over. Please join us in closing prayer."
			sleep 5
			bash internal/PrayRosary.sh
			online=false
			dointro=true
			dobreakfast=true
			dolunch=true
			dodinner=true
			aplay Outro.wav
		else
			bash internal/PlayRandomSong.sh
		fi
	else
		if $dointro && [ $currtime > 600 ];
		then
			aplay Outro.wav
			bash internal/tooling/TTSSpeak.sh "Today is: $(date '+%A-%Y-%m-%d')"
			bash internal/PrayRosary.sh
			online=true
		fi
	fi
	sleep 1
done
