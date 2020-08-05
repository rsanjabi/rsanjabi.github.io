



select count(*) as validation_errors
from ANALYTICS.MODEL.fct_listing_snapshot
where listing_snapshot_key is null

