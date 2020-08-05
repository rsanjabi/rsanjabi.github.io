



select count(*) as validation_errors
from ANALYTICS.MODEL.stg_costs
where living_idx is null

