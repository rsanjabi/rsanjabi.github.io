



select count(*) as validation_errors
from raw.loading.raw_costs
where living_rent_idx is null

