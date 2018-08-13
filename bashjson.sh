#!/bin/bash
bashJson(){
	python readJSon.py "$@"
}


if [[ $#  < 2 ]]; then
	echo "Missing arguments, correct format is : ./bashjson.sh fileSource keys"
	echo "Please read the docs at https://github.com/hack4mer/bashjson"
	exit
fi

bashJson "$@"