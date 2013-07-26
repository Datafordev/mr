#!/bin/bash

HADOOP_HOME=/usr/lib/hadoop
JAR=/usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming-2.0.0-mr1-cdh4.3.0.jar
#JAR=/usr/lib/hadoop-mapreduce/hadoop-streaming.jar

HSTREAMING="$HADOOP_HOME/bin/hadoop jar $JAR"

$HSTREAMING \
 -mapper  'ruby map.rb' \
 -reducer 'ruby reduce.rb' \
 -file map.rb \
 -file reduce.rb \
 -input '/user/cloudera/data/input' \
 -output /user/cloudera/data/output
