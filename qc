#!/bin/zsh
# Quick Compile
# Main component

if [ $# -eq 0 ]; then
	echo "Usage: $0 file.ext"
else
	file=$1
	file_ext=${file##*.}

	if [[ $file_ext == "cpp" ]]; then
		qc-cpp $file
	elif [[ $file_ext == "java" ]]; then
		qc-java $file
	else
		echo "Quick Compile does not support files of type \"$file_ext\""
	fi
fi