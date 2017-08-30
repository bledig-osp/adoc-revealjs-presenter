#!/bin/sh
echo "Processing $*"
asciidoctor-revealjs -r asciidoctor-diagram --destination-dir /slides/html5 $*
