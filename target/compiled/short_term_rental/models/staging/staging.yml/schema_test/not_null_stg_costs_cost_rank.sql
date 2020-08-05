



select count(*) as validation_errors
from ANALYTICS.MODEL.stg_costs
where cost_rank is null

