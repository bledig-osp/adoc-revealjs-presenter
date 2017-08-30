#!/bin/sh
echo "$(date -Iseconds) Processing $*"
asciidoctor-revealjs -r asciidoctor-diagram --destination-dir /slides/html5 $*
