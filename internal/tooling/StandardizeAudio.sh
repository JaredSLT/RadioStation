#!/bin/bash
noextension=$(echo "$1" | cut -f 1 -d '.')
ffmpeg -i "$1" -c:a pcm_s16le -ar 44100 -y "$noextension.wav" >/dev/null 2>&1
rm "$1"
