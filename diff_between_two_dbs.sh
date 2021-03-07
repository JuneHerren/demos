#!/bin/bash
live_db_name =""
test_db_name =""
project_name =""
file1="${uat_db_name}_uat.sql"
file2="${live_db_name}_live.sql"
day=`date +%Y%m%d`
file1="${file1}.${day}"
file2="${file2}.${day}"

bash `sync_${project_name}_uat2local.sh`

bash `sync_${project_name}_live2local.sh`


cd  data && vimdiff -c 'set diffopt=filler,context:0' ${file1} ${file2} -c TOhtml -c 'w! diff.html' -c 'qa!'
