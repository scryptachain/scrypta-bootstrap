#!/bin/sh

cd ~/.lyra

pkill lyrad

sleep 10s

filename=bootstrap-$(date +"%Y%m%d-%H%M%S%3N").zip

zip -r $filename chainstate blocks

cp $filename /home/bootstrap/latest.zip
mv $filename /home/bootstrap/history/

# delete old zip
find /home/bootstrap/history/*.zip -mtime +1 -exec rm {} \;

~/lyrad &