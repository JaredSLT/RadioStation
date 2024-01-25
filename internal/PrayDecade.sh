#!/bin/bash
DOW=$(date +%u)
presenter=$2
case $DOW in
	1)
		case $1 in
		1)
			aplay recordings/$presenter/rosary/AnnunciationOfTheBlessedVirginMary.wav
		;;
		2)
			aplay recordings/$presenter/rosary/VisitationOfTheBlessedVirginMary.wav
		;;
		3)
			aplay recordings/$presenter/rosary/TheBirthOfOurLordJesusChrist.wav
		;;
		4)
			aplay recordings/$presenter/rosary/AnOfferingToOurLordJesusChrist.wav
		;;
		5)
			aplay recordings/$presenter/rosary/TheDiscoveryOfOurLordJesusChristInTheTemple.wav
		;;
		esac
	;;
	2)
		case $1 in
		1)
			aplay recordings/$presenter/rosary/TheAgonyOfOurLordJesusChristInTheGarden.wav
		;;
		2)
			aplay recordings/$presenter/rosary/TheFlagelatinoOfOurLordJesusChrist.wav
		;;
		3)
			aplay recordings/$presenter/rosary/TheCrowningOfTheThornsOfOurLordJesusChrist.wav
		;;
		4)
			aplay recordings/$presenter/rosary/BajulationOfTheCross.wav
		;;
		5)
			aplay recordings/$presenter/rosary/TheCrucifixionOfOurLordJesusChrist.wav
		;;
		esac
	;;
	3)
		case $1 in
		1)
			aplay recordings/$presenter/rosary/TheResurrectionOfOurLordJesusChrist.wav
		;;
		2)
			aplay recordings/$presenter/rosary/TheAscentionOfOurLordJesusChristIntoHeaven.wav
		;;
		3)
			aplay recordings/$presenter/rosary/TheMissionOfTheHolySpiritOnTheDisciples.wav
		;;
		4)
			aplay recordings/$presenter/rosary/AssumptionOfTheBlessedVirginMaryIntoHeaven.wav
		;;
		5)
			aplay recordings/$presenter/rosary/CoronationOfTheBlessedVirginMary.wav
		;;
		esac
	;;
	4)
		case $1 in
		1)
			aplay recordings/$presenter/rosary/TheBaptismOfTheLordInTheRiverJordan.wav
		;;
		2)
			aplay recordings/$presenter/rosary/TheWeddingOfCanaWhereChristManifestedHimself.wav
		;;
		3)
			aplay recordings/$presenter/rosary/TheProclamationOfOurLord.wav
		;;
		4)
			aplay recordings/$presenter/rosary/TheTransfigurationOfTheLord.wav
		;;
		5)
			aplay recordings/$presenter/rosary/TheLastSupperWhereOurLordGaveUsTheHolyEucharist.wav
		;;
		esac
	;;
	5)
		case $1 in
		1)
			aplay recordings/$presenter/rosary/TheAgonyOfOurLordJesusChristInTheGarden.wav
		;;
		2)
			aplay recordings/$presenter/rosary/TheFlagelatinoOfOurLordJesusChrist.wav
		;;
		3)
			aplay recordings/$presenter/rosary/TheCrowningOfTheThornsOfOurLordJesusChrist.wav
		;;
		4)
			aplay recordings/$presenter/rosary/BajulationOfTheCross.wav
		;;
		5)
			aplay recordings/$presenter/rosary/TheCrucifixionOfOurLordJesusChrist.wav
		;;
		esac
	;;
	6)
		case $1 in
		1)
			aplay recordings/$presenter/rosary/AnnunciationOfTheBlessedVirginMary.wav
		;;
		2)
			aplay recordings/$presenter/rosary/VisitationOfTheBlessedVirginMary.wav
		;;
		3)
			aplay recordings/$presenter/rosary/TheBirthOfOurLordJesusChrist.wav
		;;
		4)
			aplay recordings/$presenter/rosary/AnOfferingToOurLordJesusChrist.wav
		;;
		5)
			aplay recordings/$presenter/rosary/TheDiscoveryOfOurLordJesusChristInTheTemple.wav
		;;
		esac
	;;
	7)
		case $1 in
		1)
			aplay recordings/$presenter/rosary/TheResurrectionOfOurLordJesusChrist.wav
		;;
		2)
			aplay recordings/$presenter/rosary/TheAscentionOfOurLordJesusChristIntoHeaven.wav
		;;
		3)
			aplay recordings/$presenter/rosary/TheMissionOfTheHolySpiritOnTheDisciples.wav
		;;
		4)
			aplay recordings/$presenter/rosary/AssumptionOfTheBlessedVirginMaryIntoHeaven.wav
		;;
		5)
			aplay recordings/$presenter/rosary/CoronationOfTheBlessedVirginMary.wav
		;;
		esac
	;;
esac
bash internal/RandomPrayerRecording.sh $presenter ourfather
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter hailmary
bash internal/RandomPrayerRecording.sh $presenter glorybe
bash internal/RandomPrayerRecording.sh $presenter fatimaprayer
