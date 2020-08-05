



select count(*) as validation_errors
from ANALYTICS.MODEL.analytics_flagged
where listing_snapshot_key is null

