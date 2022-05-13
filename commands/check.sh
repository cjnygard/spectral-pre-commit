#!/bin/bash

help() {
	echo "usage: spectral-lint check files..."
	echo
	echo "Checks the given files for OAS conformance"
	exit 1
}

check() {
	FILE="$1" # incoming argument value from pre-commit

	if ! spectral lint "${FILE}"; then
		echo "Found OAS spec linting violations"
		exit 1
	fi
}

if [ "$#" -lt 1 ]; then
	echo "Error. No files specified"
	help
	exit 1
fi

while [ "$#" -gt 0 ]; do
	check "$1"
	shift
done
