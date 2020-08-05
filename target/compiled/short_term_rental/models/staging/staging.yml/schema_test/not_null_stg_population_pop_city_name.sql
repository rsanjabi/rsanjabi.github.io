



select count(*) as validation_errors
from ANALYTICS.MODEL.stg_population
where pop_city_name is null

