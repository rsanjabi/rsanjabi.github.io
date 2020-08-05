



select count(*) as validation_errors
from (

    select
        listing_id

    from ANALYTICS.MODEL.dim_listing
    where listing_id is not null
    group by listing_id
    having count(*) > 1

) validation_errors

