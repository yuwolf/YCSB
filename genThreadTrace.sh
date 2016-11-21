RECORDCOUNT=100
FIELDLENGTH=100
WORKLOAD=workloada
bin/ycsb load basic -P workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -threads 1
#bin/ycsb run basic -P workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p operationcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1
