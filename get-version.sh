#! /bin/bash

version=${BUILD_SOURCEBRANCH#*v}
echo "Version:" $version

major=${version%%.*}
echo "Major:" $major

minor=${version%.*}
minor=${minor#*.}
echo "Minor:" $minor

patch=${version##*.}
echo "Patch:" $patch