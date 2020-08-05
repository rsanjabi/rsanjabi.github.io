



select count(*) as validation_errors
from ANALYTICS.MODEL.stg_population
where population is null

