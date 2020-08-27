#!/bin/sh

cd ~/.lyra

pkill lyrad

filename=bootstrap-$(date +"%Y%m%d-%H%M%S%3N").zip

zip -r $filename chainstate blocks

cp $filename ~/bootstrap/latest.zip
mv $filename ~/bootstrap/history/

# delete old zip
find ~/bootstrap/history/*.zip -mtime +1 -exec rm {} \;

~/lyrad &