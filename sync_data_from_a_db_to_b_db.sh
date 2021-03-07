
 # author: junqing_yang
  
  live_db = "mysql"
  live_db_host =""
  live_db_user = ""
  live_db_password =""
  live_db_port =""
  live_db_name =""
  test_db ="mysql"
  test_db_host =""
  test_db_user =""
  test_db_password =""
  test_db_port =""
  test_db_name =""
  3 for table in `${live_db} -u${live_db_user} -p${live_db_password} -h${live_db_host} -P{live_db_port}  ${live_db_name}  -e "show tables"`
  4 
  5 do
  6 
  7 if [[ ${table} == "Tables_in_shopee_report_center_db" ]]; then
  8 
  9  continue
 10 
 11 fi
 12 
 13 day=`date +%Y%m%d`
 14 
 15 out="live_${live_db_name}_$table.sql.${day}"
 16 
 17 #if [[ ${table} == "sip_mst_metrics_tab" ]]; then
 18 
 19 sudo rm -rf data/
 20 sudo mkdir data
 21 
 22 #echo "log-->dump live_shopee_report_center_db_{table};"
 23 mysqldump --set-gtid-purged=off --log-error=/tmp/1 -h${live_db_host} -u${live_db_user} -p${live_db_password} -P${live_db_port} ${live_db_name} ${table} --single-transaction > data/$out
 24 
 25 [ $? -eq 0 ] &&  echo "log-->dump live_${live_db_name}_${table};"
 26 
 27 [ -f data/$out ] && sed -i '/LOCK/d' data/$out && ${test_db} -u${test_db_user} -h${test_db_host} -P${test_db_port} ${test_db_name} -p${test_db_password} < data/$out
 28 
 29 [ $? -eq 0 ] && echo "log-->import into test_shopee_data_group_report_center_db_${table};"
 30 #fi
 31 
 32 
 33 done

