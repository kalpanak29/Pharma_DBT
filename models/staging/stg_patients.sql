SELECT 
    patient,
    birthdate,
    deathdate,
    CONCAT(first, ' ', last) AS name,
    gender,
    CASE 
        WHEN deathdate IS NULL THEN 1 
        ELSE 0 
    END AS is_alive
FROM {{ source('bronze', 'patients') }}
WHERE patient IS NOT NULL