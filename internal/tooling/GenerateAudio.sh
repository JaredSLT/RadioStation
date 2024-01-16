#!/bin/bash
echo "Generating: $1"
gtts-cli "$1" -o "$2.mp3"
bash internal/tooling/StandardizeAudio.sh "$2.mp3"
