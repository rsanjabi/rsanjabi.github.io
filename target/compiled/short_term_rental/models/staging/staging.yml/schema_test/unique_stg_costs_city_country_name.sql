



select count(*) as validation_errors
from (

    select
        city_country_name

    from ANALYTICS.MODEL.stg_costs
    where city_country_name is not null
    group by city_country_name
    having count(*) > 1

) validation_errors

