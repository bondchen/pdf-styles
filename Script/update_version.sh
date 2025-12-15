#!/bin/sh

for f in $(grep -rl "StylerVersion=\"8.02\"" raw)
do
    echo "Update $f to run in PE7.1"
    sed -i 's/StylerVersion="8.02"/StylerVersion="6.02"/g' $f
    sed -i 's/stylerVersion="8"/stylerVersion="6"/g' $f
done
