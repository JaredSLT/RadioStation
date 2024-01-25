#!/bin/bash
gtts-cli "$1" -o TempTTS.mp3
bash internal/tooling/StandardizeAudio.sh TempTTS.mp3
aplay TempTTS.mp3.wav
rm TempTTS.mp3.wav
