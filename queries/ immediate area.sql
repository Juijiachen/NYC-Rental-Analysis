
    SELECT *
    FROM tree_censuses tc
    WHERE ST_DWithin(
        ST_SetSRID(ST_MakePoint(tc.longitude, tc.latitude), 4326),
        ST_SetSRID(ST_MakePoint(-73.96253174434912, 40.80737875669467), 4326),
        804.67
    )
