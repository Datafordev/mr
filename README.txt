1) Unzip large files:
unzip words.gz

2) Simulating MapReduce:
cat words | ruby map.rb | sort | ruby reduce.rb

3) Create HDFS locations and copy input files
hadoop fs -mkdir /user/cloudera/data/splitInput
hadoop fs -rmr /user/cloudera/data/output
hadoop fs -put <files> /user/cloudera/data/splitInput/

4) Using MapReduce on Hadoop:
./mapReduce.sh
