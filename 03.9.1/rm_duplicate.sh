#!/bin/sh

cat "$1" | uniq >> new_"$1"
