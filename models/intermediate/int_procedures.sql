SELECT 
    PATIENT AS patient_id,
    COUNT(*) AS total_procedures,
    COUNT(DISTINCT DESCRIPTION) AS unique_procedures
FROM {{ ref('stg_procedures') }}
GROUP BY PATIENT