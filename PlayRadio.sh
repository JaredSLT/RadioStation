#!/bin/bash
online=false
dointro=true
dobreakfast=true
dolunch=true
dodivine=true
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
if [ $currtime -gt 1500 ];
then
	dodivine=false
	echo "Skipping divine mercy..."
fi
if [ $currtime -gt 1800 ];
then
	echo "Skipping dinner..."
	dodinner=false
fi
if [ $currtime -gt 1900 ];
then
	echo "We're offline."
	online=false
fi

while :
do
	currtime=$(date +%H%M)
	echo "Current time is:" $currtime
	if $online
	then
		if $dobreakfast
		then
			if [ $currtime -gt 900 ];
			then
				echo "Time for breakfast"
				aplay tts/BreakfastAnnouncement.wav
				sleep 5
				aplay tts/MealPrayer.wav
				dobreakfast=false
				echo "Sleeping 1 hour for breakfast..."
				sleep 3600
				aplay tts/BreakfastEndAnnouncement.wav
			fi
		fi
		if $dolunch
                then
			if [ $currtime -gt 1200 ];
			then
				echo "Time for lunch"
				aplay tts/LunchAnnouncement.wav
				sleep 5
				aplay tts/MealPrayer.wav
				dolunch=false
				echo "Sleeping 1 hour for breakfast..."
				sleep 3600
                        	aplay tts/LunchEndAnnouncement.wav
			fi
		fi
		if $dodivine
                then
			if [ $currtime -gt 1500 ];
			then
				echo "Time for divine mercy"
				aplay tts/DivineMercyChapletAnnouncement.wav
				sleep 5
				dodivine=false
				bash internal/PrayDivine.sh
			fi
		fi
		if $dodinner
                then
			if [ $currtime -gt 1800 ];
			then
				echo "Time for dinner"
				aplay tts/DinnerAnnouncement.wav
				sleep 5
				aplay tts/MealPrayer.wav
				dodinner=false
				echo "Sleeping 1 hour for dinner..."
				sleep 3600
			fi
		fi
		if [ $currtime -gt 1900 ];
                then
			echo "Time to do closing prayers..."
			aplay tts/ClosingPrayer.wav
			sleep 5
			bash internal/PrayRosary.sh
			online=false
			dointro=true
			dobreakfast=true
			dolunch=true
			dodinner=true
			aplay Outro.wav
		else
			echo "Filling with music..."
			bash internal/PlayRandomSong.sh
		fi
	else
		if [ $currtime -gt 600 ];
		then
			echo "Starting stream..."
			aplay Outro.wav
			bash internal/tooling/TTSSpeak.sh "Today is: $(date '+%A-%Y-%m-%d')"
			bash internal/PrayRosary.sh
			online=true
		else
			echo "We're offline and it's not time to start..."
		fi
	fi
	sleep 1
done
