RECORDCOUNT=42000000
FIELDLENGTH=992
WORKLOAD=workloadu
OPERATIONCOUNT=4096
FILEDIR=/home/wujy/hashkv_exp/trace/
INSERTORDER=hashed
LOAD_RUN=load
requestdistribution=zipfian
fieldlengthdistribution=constant
let MAXSCANLENGTH=1024
bin/ycsb load basic -P  workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -p filedirectory="$FILEDIR"  -p insertorder="$INSERTORDER" -p load_run="$LOAD_RUN" -p requestdistribution="$requestdistribution" -p inputworkload="$WORKLOAD" -p fieldlengthdistribution="$fieldlengthdistribution" -p zeropadding=20
LOAD_RUN=run
bin/ycsb run basic -P  workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p operationcount="$OPERATIONCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -p filedirectory="$FILEDIR"  -p insertorder="$INSERTORDER" -p load_run="$LOAD_RUN" -p requestdistribution="$requestdistribution" -p inputworkload="$WORKLOAD" -p fieldlengthdistribution="$fieldlengthdistribution" -p updateproportion=0.0 -p scanproportion=1.0 -p maxscanlength="$MAXSCANLENGTH" -p scanlengthdistribution=max -p zeropadding=20 


