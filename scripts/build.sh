#!/usr/bin/env bash

# exit on any execution fail
set -e

skip_setup=""
skip_test=""

read -p "Do you wish to avoid a fresh setup? default to cached app dependencies?(Y/n)" skip_setup

if [ $skip_setup == "n" ]; then
	./scripts/setup.sh
fi

read -p "Do you wish to skip basic test run?(Y/n)" skip_test

if [ $skip_test == "n" ]; then
	./scripts/test.sh
fi

if [ $? -ne 0 ]; then
	exit 1
fi

buildozer -v android debug

if [ $? -ne 0 ]; then
	exit 1
fi

echo -e "\a"

# For second test with a connected android device
buildozer android deploy run logcat > apklogcat

#buildozer serve
