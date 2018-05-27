#!/bin/bash

SCRIPT_DIR=$(dirname $0)
EXEC=${SCRIPT_DIR}/mobile-video-encode.sh

FILES=(*)

for (( i=0; i < ${#FILES[@]}; i++ ))
do
	FILE="${FILES[$i]}"
	echo "$EXEC '$FILE'" | at now
done;
