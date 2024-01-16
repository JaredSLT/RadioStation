#!/bin/bash
while :
do
	ffmpeg -loop 1 -f image2 -i coronationOfMary.jpg -f lavfi -f pulse -i default -vf format=yuv420p -r 30 -g 60 -c:v libx264 -x264-params keyint=60 -bufsize 500k -c:a aac -ar 44100 -b:a 128k -f flv "rtmp://a.rtmp.youtube.com/live2/$1"
	sleep 3
done
