#!/bin/bash
if [ "$#" -eq 0 ]; then
	echo "You forgot to introduce the tag name";
	exit;
else
	echo "Image tag name is $1";
fi
docker build . -t "smkt-gateway:$1"
