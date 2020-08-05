



select count(*) as validation_errors
from (

    select
        cost_rank

    from ANALYTICS.MODEL.stg_costs
    where cost_rank is not null
    group by cost_rank
    having count(*) > 1

) validation_errors

