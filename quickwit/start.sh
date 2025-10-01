#!/bin/bash

# Do we run already?
pidof quickwit >/dev/null && exit 1

# Ensure data directory exists
mkdir -p ./qwdata

echo "Starting Quickwit"
./quickwit run &

while true
do
    ./quickwit index list && break
    sleep 1
done
echo "Started Quickwit."
