

      create or replace transient table ANALYTICS.MODEL.all_available_listings  as
      (

WITH listings AS (
    SELECT * FROM ANALYTICS.MODEL.stg_listings
),

avail_cities AS (
    SELECT * FROM ANALYTICS.MODEL.dim_city
),

avail_listings AS (
    SELECT 
        md5(cast(
    
    coalesce(cast(listings.listing_id as 
    varchar
), '') || '-' || coalesce(cast(listings.listing_report_date as 
    varchar
), '')

 as 
    varchar
))                AS listing_snapshot_key,
        listings.listing_id,
        listings.listing_name,
        listings.host_id,
        listings.host_name,
        listings.neighborhood_group,
        listings.neighborhood,
        listings.listing_lat,
        listings.listing_long,
        listings.room_type,
        listings.price,
        listings.min_nights,
        listings.number_of_reviews,
        listings.last_review,
        listings.reviews_per_month,
        listings.total_host_listings,
        listings.availability_365,
        listings.listing_city,
        listings.standard_city,
        listings.listing_report_date
    FROM listings
    INNER JOIN avail_cities
    USING (standard_city)
)

SELECT * FROM avail_listings
      );
    