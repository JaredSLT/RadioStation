#!/bin/bash
mkdir -p accompaniments/$1/tts
for f in accompaniments/$1/recordings/*;
do
	base=$(basename "${f}")
	noextension=${base%.*}
	bash internal/tooling/GenerateAudio.sh "$noextension" accompaniments/$1/tts/"$noextension.wav"
done
