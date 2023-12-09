
    SELECT incident_zip, COUNT(*) AS num_complaints
    FROM nyc_311_services
    WHERE created_date >= '2022-10-01' AND created_date <= '2023-09-30'
    GROUP BY incident_zip
    ORDER BY num_complaints DESC;
