



select count(*) as validation_errors
from ANALYTICS.MODEL.dim_city
where standard_city is null

