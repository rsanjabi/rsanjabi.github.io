



select count(*) as validation_errors
from ANALYTICS.MODEL.stg_listings
where listing_report_date is null

