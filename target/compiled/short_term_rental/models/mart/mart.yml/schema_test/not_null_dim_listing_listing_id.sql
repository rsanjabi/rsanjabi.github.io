



select count(*) as validation_errors
from ANALYTICS.MODEL.dim_listing
where listing_id is null

