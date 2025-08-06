#!/usr/bin/env bash

echo -e"\t\tTesting funcs.py"
python3 dev/funcs.py

echo -e"\t\tTesting main.py"
python3 src/main.py
read "App test run complete; Build an apk?(Y/n)" choice

if [ $choice == "n" ]; then
	echo "The app code wasn't approved; ... terminating..."
	exit 1
fi
