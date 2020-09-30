#!/bin/sh
# author: LHIND

export VERSION=3.1.0

git checkout dev
sed -i "s/version=.*/version="${VERSION}"/g" gradle.properties
#./gradlew clean build
git commit -m "update version to ${VERSION}"
git merge master
git checkout master
git tag ${VERSION}
git push origin master
git branch release/version