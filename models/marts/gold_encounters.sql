SELECT 
    patient_id,
    COUNT(*) AS total_encounters
FROM {{ ref('silver_pharma') }}
GROUP BY patient_id