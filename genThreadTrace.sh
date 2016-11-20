RECORDCOUNT=100
FIELDLENGTH=100
WORKLOAD=workloadu
bin/ycsb load basic -P workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -threads 4
#bin/ycsb run basic -P workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p operationcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1
