



select count(*) as validation_errors
from raw.loading.raw_costs
where restaurant_idx is null

