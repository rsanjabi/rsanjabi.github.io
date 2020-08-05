



select count(*) as validation_errors
from raw.loading.raw_listings
where id is null

