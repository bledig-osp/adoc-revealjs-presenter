#!/bin/sh
docker run --rm -ti -v ${PWD}/slides:/slides bledig2/adoc-revealjs-processor $@
