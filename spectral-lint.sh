#!/bin/bash

path=$(dirname "$0")
help() {
	echo "spectral-lint"
	echo
	echo "   check           lints the files"
	echo
	exit 1
}

if [ "$1" == "check" ]; then
	shift
	"${path}"/commands/check.sh "$@"
else
	echo "Error. Invalid command $1. Available commands are {check}"
	help
fi
