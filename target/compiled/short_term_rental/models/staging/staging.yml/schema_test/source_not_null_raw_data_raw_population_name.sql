



select count(*) as validation_errors
from raw.loading.raw_population
where name is null

