#!/bin/bash

now=$(date +"%Y.%m.%d_%H:%M")
file="/Users/michal/Google Drive/Project/topstylesalon.cz/backups/backup_${now}"

heroku pg:backups capture
line=`heroku pg:backups 2> /dev/null | sed -n 4,1p`
id=`echo $line | awk -F ' ' '{print $1}'`
url=`heroku pg:backups public-url $id | sed -n 2,1p | awk -F "'" '{print $2}'`

curl -o "$file" "$url"
du -hs "$file"
