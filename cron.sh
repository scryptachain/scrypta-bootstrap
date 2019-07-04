cd /home/scrypta/lyra-data

filename=bootstrap-$(date +"%Y%m%d-%H%M%S%3N").zip

zip -r $filename chainstate blocks

mv $filename /home/scrypta/lyra-data/files/

# delete old zip
find /home/scrypta/lyra-data/files/*.zip -mtime +1 -exec rm {} \;



