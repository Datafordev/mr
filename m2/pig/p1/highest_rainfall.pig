-- Determine the highest rainfall across all locations

raw_data = load '10k.2012.csv' using PigStorage(',') 
		AS (station_id:chararray, date:chararray, element:chararray, data:int, m_flag:chararray, q_flag:chararray, s_flag:chararray, observation_time:chararray);

rainfall_data = filter raw_data BY (element is not null and element == 'PRCP');

location_and_rainfall_on_date = foreach rainfall_data generate station_id as station_id, data as rainfall, date as date_of_record;

sort_by_rainfall = order location_and_rainfall_on_date by rainfall desc;

top_five_by_rainfall = limit sort_by_rainfall 5;

store top_five_by_rainfall into '5.highest';
