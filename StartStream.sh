#!/bin/bash
while :
do
	ffmpeg -stream_loop -1 -vsync drop -i loop.mp4 -f pulse -i default -c:v libx264 -x264-params keyint=50:scenecut=0 -tune zerolatency -preset ultrafast -g 25 -c:a aac -b:v 1m -ar 44100 -b:a 128k -threads 6 -bufsize 3M -f flv "rtmp://a.rtmp.youtube.com/live2/f1gt-d2wb-bp9v-5p7w-5z91"
	sleep 3
done
