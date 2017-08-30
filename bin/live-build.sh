#!/bin/bash
set -e

# copy default css/images to slider folder
cp -a css /slides/html5/
cp -a images /slides/html5/
cp -a reveal.js /slides/html5/

cp -a /slides/css /slides/html5/
cp -a /slides/images /slides/html5/

./bin/build.sh /slides/*.adoc

while true ; do 
  adoc_file=`inotifywait --format=%w -e modify /slides/*.adoc`
  ./bin/build.sh $adoc_file
done
