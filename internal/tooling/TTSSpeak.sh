#!/bin/bash
gtts-cli "$1" -o internal/tooling/TempTTS.mp3 >/dev/null 2>&1
bash internal/tooling/StandardizeAudio.sh internal/tooling/TempTTS.mp3
aplay internal/tooling/TempTTS.wav >/dev/null 2>&1
rm internal/tooling/TempTTS.wav
