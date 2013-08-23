#!/usr/bin/awk -f
BEGIN {
	FS=",";
};
{
	print $2;
}

# run using something like
# [cloudera@localhost mr]$ ./m2/awk/only_dates.awk data/ncdc/ghcn/daily/by_year/2012.csv | sort | uniq | wc -l
