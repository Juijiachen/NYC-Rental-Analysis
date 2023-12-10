
    SELECT tc.zipcode, COUNT(DISTINCT tc.id) as total_trees
    FROM tree_censuses tc
    JOIN geo_zip_codes gzc
    ON ST_Within(ST_SetSRID(ST_Point(tc.longitude, tc.latitude), 4326), gzc.geometry)
    GROUP BY tc.zipcode
    ORDER BY total_trees DESC
    LIMIT 10;
