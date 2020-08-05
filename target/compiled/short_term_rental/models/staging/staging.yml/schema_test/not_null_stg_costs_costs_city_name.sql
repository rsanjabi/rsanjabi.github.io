



select count(*) as validation_errors
from ANALYTICS.MODEL.stg_costs
where costs_city_name is null

