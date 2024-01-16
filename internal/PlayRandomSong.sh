#!/bin/bash
presenter=$(bash internal/GetRandomPresenter.sh)
song=$(ls accompaniments/$presenter/recordings | shuf -n 1)
aplay NowPlayingX.wav
aplay "accompaniments/$presenter/tts/$song"
aplay "accompaniments/$presenter/recordings/$song"
