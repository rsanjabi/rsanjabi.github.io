



select count(*) as validation_errors
from ANALYTICS.MODEL.all_available_listings
where listing_snapshot_key is null

