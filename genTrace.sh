RECORDCOUNT=100
FIELDLENGTH=1024
WORKLOAD=workloada
FILEDIR=./
INSERTORDER=ordered
LOAD_RUN=load
requestdistribution=zipfian
fieldlengthdistribution=constant
bin/ycsb load basic -P  workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -p filedirectory="$FILEDIR"  -p insertorder="$INSERTORDER" -p load_run="$LOAD_RUN" -p requestdistribution="$requestdistribution" -p inputworkload="$WORKLOAD" -p fieldlengthdistribution="$fieldlengthdistribution" -p zeropadding=20
LOAD_RUN=run
bin/ycsb run basic -P  workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p operationcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -p filedirectory="$FILEDIR"  -p insertorder="$INSERTORDER" -p load_run="$LOAD_RUN" -p requestdistribution="$requestdistribution" -p inputworkload="$WORKLOAD" -p fieldlengthdistribution="$fieldlengthdistribution" -p zeropadding=20 


