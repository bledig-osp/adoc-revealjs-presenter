#!/bin/bash
set -e

# copy default css/images to slider folder
cp -av css /slides/html5/
cp -av images /slides/html5/
cp -a reveal.js /slides/html5/

cp -av /slides/css /slides/html5/
cp -av /slides/images /slides/html5/

./bin/build.sh /slides/*.adoc

while true ; do 
  adoc_file=`inotifywait --format=%w -e modify /slides/*.adoc`
  ./bin/build.sh $adoc_file
done
