#! /bin/bash

# Takes a single argument: the release tag prefix (i.e. the part
# that, once stripped off, leaves behind the version number)
# E.g. if release tags are `release/v1.2.3` then the prefix is `release/v`

if [ "$#" -ne 1 ]; then
    echo "ERROR: Incorrect number of arguments."
    echo "Usage: get-version release/prefix"
    exit 1
fi

version=${BUILD_SOURCEBRANCH#*$1}
echo "Version:" $version

major=${version%%.*}
echo "##vso[task.setvariable variable=MajorVersion]$major"

minor=${version%.*}
minor=${minor#*.}
echo "##vso[task.setvariable variable=MinorVersion]$minor"

patch=${version##*.}
echo "##vso[task.setvariable variable=PatchVersion]$patch"