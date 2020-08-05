



select count(*) as validation_errors
from raw.loading.raw_costs
where purch_power_idx is null

