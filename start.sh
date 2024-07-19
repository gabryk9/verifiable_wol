#!/bin/bash

if [ -f .env ]; then
    export $(cat .env | xargs)
fi

echo "Sending wake up signal to your device..."

sudo etherwake $TARGET_MAC

echo "Signal sent. Waiting for the device to be online..."

timeout 120 bash -c "
  while ! ping -c 1 $TARGET_IP &> /dev/null; do
    sleep 1
  done
"

if [ $? -eq 0 ]; then
  echo "Your device is online!"
else
  echo "There was some problem, a physical cheeck is needed."
fi
