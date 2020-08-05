



select count(*) as validation_errors
from (

    select
        listing_snapshot_key

    from ANALYTICS.MODEL.fct_listing_snapshot
    where listing_snapshot_key is not null
    group by listing_snapshot_key
    having count(*) > 1

) validation_errors

