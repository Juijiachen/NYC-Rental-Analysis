
    (
    SELECT 
        z."RegionName" AS zipcode, 
        to_char(AVG(z."RentPrice"), 'FM9999,999.00') AS average_rent, 
        COALESCE((
            SELECT COUNT(*)
            FROM tree_censuses tc
            WHERE tc.zipcode::text = z."RegionName"
        ), 0) AS tree_count, 
        COALESCE((
            SELECT COUNT(*)
            FROM nyc_311_services nyc
            WHERE nyc.incident_zip = z."RegionName" 
            AND to_char(nyc.created_date, 'YYYY-MM') = '2023-01'
        ), 0) AS complaint_count
    FROM 
        zillow_rents z
    WHERE 
        to_char(z."Date", 'YYYY-MM') = '2023-01'
    GROUP BY 
        z."RegionName"
    ORDER BY 
        AVG(z."RentPrice")
    LIMIT 5
)
UNION ALL
(
    SELECT 
        z."RegionName" AS zipcode, 
        to_char(AVG(z."RentPrice"), 'FM9999,999.00') AS average_rent, 
        COALESCE((
            SELECT COUNT(*)
            FROM tree_censuses tc
            WHERE tc.zipcode::text = z."RegionName"
        ), 0) AS tree_count, 
        COALESCE((
            SELECT COUNT(*)
            FROM nyc_311_services nyc
            WHERE nyc.incident_zip = z."RegionName" 
            AND to_char(nyc.created_date, 'YYYY-MM') = '2023-01'
        ), 0) AS complaint_count
    FROM 
        zillow_rents z
    WHERE 
        to_char(z."Date", 'YYYY-MM') = '2023-01'
    GROUP BY 
        z."RegionName"
    ORDER BY 
        AVG(z."RentPrice") DESC
    LIMIT 5
)
ORDER BY 
    average_rent DESC;
    
