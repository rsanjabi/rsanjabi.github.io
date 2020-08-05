



select count(*) as validation_errors
from (

    select
        city

    from raw.loading.raw_costs
    where city is not null
    group by city
    having count(*) > 1

) validation_errors

