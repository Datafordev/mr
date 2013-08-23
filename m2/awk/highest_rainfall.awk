#!/usr/bin/awk -f
BEGIN {
	FS=",";
};
{
	if ($3 == "PRCP") {
		print $4;
  	}
}
