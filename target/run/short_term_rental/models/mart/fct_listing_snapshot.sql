

      create or replace transient table ANALYTICS.MODEL.fct_listing_snapshot  as
      (

WITH listings AS (
    SELECT * FROM ANALYTICS.MODEL.all_available_listings
),

fact_snapshot AS (
    SELECT 
        md5(cast(
    
    coalesce(cast(listing_id as 
    varchar
), '') || '-' || coalesce(cast(listing_report_date as 
    varchar
), '')

 as 
    varchar
)) AS listing_snapshot_key,
        listing_id,
        listing_report_date,
        standard_city,
        price,
        min_nights,
        number_of_reviews,
        last_review,
        reviews_per_month,
        total_host_listings,
        availability_365
    FROM listings
)

SELECT * FROM fact_snapshot
      );
    