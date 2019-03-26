#!/bin/bash

INPUT="$1"
OUTPUT="coded_${INPUT}.mp4"
LOGFILE=/tmp/mobile-video-encode.log

ffmpeg -i "$INPUT" -map 0:v:0 -map 0:a:0 -movflags +faststart -c:v libx264 -profile:v main -level 3.1 -c:a aac -r 25 "$OUTPUT" &> $LOGFILE
