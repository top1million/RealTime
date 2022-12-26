for id in $(ipcs -m | awk 'NR>1 {print $2}'); do ipcrm -m $id; done
for id in $(ipcs -s | awk 'NR>1 {print $2}'); do ipcrm -s $id; done
killall -9 consumer
killall -9 producer
kill -9 gdb
killall -9 innerhall

