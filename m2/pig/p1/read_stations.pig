station_location_strings = load 'ghcnd-stations.txt' as (x:chararray);

station_location_info = foreach station_location_strings generate 
		SUBSTRING(x, 0, 11) as station_id,
		SUBSTRING(x, 12, 19) as station_lat,
		SUBSTRING(x, 21, 29) as station_long,
		SUBSTRING(x, 41, 70) as station_name;

dump station_location_info;

/*
IV. FORMAT OF "ghcnd-stations.txt"

------------------------------
Variable   Columns   Type
------------------------------
ID            1-11   Character
LATITUDE     13-20   Real
LONGITUDE    22-30   Real
ELEVATION    32-37   Real
STATE        39-40   Character
NAME         42-71   Character
GSNFLAG      73-75   Character
HCNFLAG      77-79   Character
WMOID        81-85   Character
------------------------------

*/
