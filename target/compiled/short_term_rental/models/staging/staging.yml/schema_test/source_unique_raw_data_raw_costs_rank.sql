



select count(*) as validation_errors
from (

    select
        rank

    from raw.loading.raw_costs
    where rank is not null
    group by rank
    having count(*) > 1

) validation_errors

