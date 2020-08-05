



select count(*) as validation_errors
from (

    select
        listing_snapshot_key

    from ANALYTICS.MODEL.all_available_listings
    where listing_snapshot_key is not null
    group by listing_snapshot_key
    having count(*) > 1

) validation_errors

