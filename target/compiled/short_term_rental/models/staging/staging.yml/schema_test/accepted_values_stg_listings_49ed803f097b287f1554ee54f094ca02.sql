




with all_values as (

    select distinct
        room_type as value_field

    from ANALYTICS.MODEL.stg_listings

),

validation_errors as (

    select
        value_field

    from all_values
    where value_field not in (
        'Entire home/apt','Private room','Shared room','Hotel room'
    )
)

select count(*) as validation_errors
from validation_errors

