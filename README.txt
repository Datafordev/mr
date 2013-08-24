(This was first used at a meetup conducted on 27th July 2013. See http://www.meetup.com/expertalks/events/128657552/)

(Also, see install.README.txt)

1) Simulating MapReduce:
cat words.txt | ruby map.rb | sort | ruby reduce.rb

2) Create HDFS locations and copy input files
hadoop fs -mkdir /user/cloudera/data/splitInput
hadoop fs -rmr /user/cloudera/data/output
hadoop fs -put words/* /user/cloudera/data/splitInput/

3) Using MapReduce on Hadoop:
./mapReduce.sh

(Instructions from part 2 meetup. See http://www.meetup.com/expertalks/events/132508222/)

See the data, pig scripts, and awk scripts under m2

# To run pig in local mode, ensure the file is available on the local filesystem at the path specified and use
$ pig -x local pigScript.pig

# To run pig with Hadoop, ensure the file to load is in HDFS, and use:
$ hadoop fs -put dataInputFile
$ pig pigScript.pig

END-OF-FILE
