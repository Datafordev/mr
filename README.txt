1) Simulating MapReduce:
cat words.txt | ruby map.rb | sort | ruby reduce.rb

2) Create HDFS locations and copy input files
hadoop fs -mkdir /user/cloudera/data/splitInput
hadoop fs -rmr /user/cloudera/data/output
hadoop fs -put words/* /user/cloudera/data/splitInput/

3) Using MapReduce on Hadoop:
./mapReduce.sh
