for id in $(ipcs -m | awk 'NR>1 {print $2}'); do ipcrm -m $id; done
for id in $(ipcs -s | awk 'NR>1 {print $2}'); do ipcrm -s $id; done


