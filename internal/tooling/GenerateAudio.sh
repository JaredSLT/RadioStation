#!/bin/bash
echo "Generating audio to: $2.mp3"
gtts-cli "$1" -o "out.mp3"
bash internal/tooling/StandardizeAudio.sh "out.mp3"
mv out.mp3.wav "$2.wav"
