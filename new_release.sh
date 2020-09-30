#!/bin/sh
# author: LHIND

export VERSION=3.3.0

git checkout dev
sed -i "s/version=.*/version="${VERSION}"/g" gradle.properties
#./gradlew clean build
git add gradle.properties
git commit -m "update version to ${VERSION}"
git checkout master
git merge dev
git tag ${VERSION}
git push origin master
git branch release/${VERSION}