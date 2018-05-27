#!/bin/bash

INPUT="$1"
OUTPUT="coded_${INPUT}.mp4"
LOGFILE=/tmp/mobile-video-encode.log

ffmpeg -i "$INPUT" -movflags +faststart -c:v libx264 -profile:v baseline -c:a aac "$OUTPUT" &> $LOGFILE
