#! /bin/bash

version=${BUILD_SOURCEBRANCH#*v}
echo "Version:" $version

major=${version%%.*}
echo "##vso[task.setvariable variable=MajorVersion]$major"
echo "Major:" $major

minor=${version%.*}
minor=${minor#*.}
echo "##vso[task.setvariable variable=MinorVersion]$minor"
echo "Minor:" $minor

patch=${version##*.}
echo "##vso[task.setvariable variable=PatchVersion]$patch"
echo "Patch:" $patch