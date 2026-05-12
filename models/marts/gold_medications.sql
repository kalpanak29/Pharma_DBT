SELECT 
    COUNT(*) AS total_medications
FROM {{ ref('int_medications') }}
GROUP BY patient_id
