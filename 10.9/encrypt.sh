#!/bin/sh

echo "Enter a key: "
read key 
echo "Enter you plain text: "
read text

echo "Crypted text: "
crypt "$key" "$text"
