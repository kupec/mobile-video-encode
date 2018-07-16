#!/bin/bash

SCRIPT_DIR=$(dirname $0)
EXEC=${SCRIPT_DIR}/mobile-video-encode.sh

FILES=(*)

mkfifo temp_pipe

for (( i=0; i < ${#FILES[@]}; i++ ))
do
	FILE="${FILES[$i]}"
	echo "$EXEC '$FILE'" > temp_pipe &
done;

cat temp_pipe | at now + 1 minute
rm temp_pipe
