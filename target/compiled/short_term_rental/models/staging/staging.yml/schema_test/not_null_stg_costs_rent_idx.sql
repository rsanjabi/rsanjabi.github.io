



select count(*) as validation_errors
from ANALYTICS.MODEL.stg_costs
where rent_idx is null

