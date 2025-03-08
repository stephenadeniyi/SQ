##Temporary Tables

WITH trips_over_1hr AS (
  SELECT *
  FROM `bigquery-public-data.new_york.citibike_trips`
  WHERE tripduration >= 3600
)

## count how many trips are 60+ minutes long

SELECT 
  COUNT (*) AS ent
FROM 
  trips_over_1hr
