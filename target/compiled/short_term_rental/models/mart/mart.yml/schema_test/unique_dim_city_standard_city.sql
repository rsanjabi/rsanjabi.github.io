



select count(*) as validation_errors
from (

    select
        standard_city

    from ANALYTICS.MODEL.dim_city
    where standard_city is not null
    group by standard_city
    having count(*) > 1

) validation_errors

