#!/bin/sh
docker run --rm -ti -v ${PWD}/slides:/slides osp-adoc-reveal-processor $@
