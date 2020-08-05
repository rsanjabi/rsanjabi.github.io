



select count(*) as validation_errors
from raw.loading.raw_costs
where rank is null

