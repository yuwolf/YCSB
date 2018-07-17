RECORDCOUNT=10500000
FIELDLENGTH=4064
WORKLOAD=workloadu
let OPERATIONCOUNT=RECORDCOUNT*3
FILEDIR=/home/wujy/hashkv_exp/trace/
INSERTORDER=hashed
LOAD_RUN=load
requestdistribution=zipfian
fieldlengthdistribution=.1to1
bin/ycsb load basic -P  workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -p filedirectory="$FILEDIR"  -p insertorder="$INSERTORDER" -p load_run="$LOAD_RUN" -p requestdistribution="$requestdistribution" -p inputworkload="$WORKLOAD" -p fieldlengthdistribution="$fieldlengthdistribution" -p zeropadding=20
LOAD_RUN=run
bin/ycsb run basic -P  workloads/"$WORKLOAD" -p recordcount="$RECORDCOUNT" -p operationcount="$OPERATIONCOUNT" -p fieldlength="$FIELDLENGTH" -p fieldcount=1 -p filedirectory="$FILEDIR"  -p insertorder="$INSERTORDER" -p load_run="$LOAD_RUN" -p requestdistribution="$requestdistribution" -p inputworkload="$WORKLOAD" -p fieldlengthdistribution="$fieldlengthdistribution" -p zeropadding=20 


