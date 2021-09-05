#!/bin/sh

usage(){
    echo "usage: $0 <draft-something-something>"
   exit 1
}

if test $# -lt 1; then
    usage
fi

docname=$1

if test -d "$docname" || test -f "$docname"; then
    echo "Draft directory exists"
    usage
fi

mkdir -p "$docname"
cp Makefile "$docname"/
cp TEMPLATE.md "$docname"/"$docname".md
