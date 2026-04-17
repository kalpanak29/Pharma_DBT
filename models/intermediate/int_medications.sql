SELECT 
    PATIENT AS patient_id,
    COUNT(*) AS total_medications,
    COUNT(DISTINCT DESCRIPTION) AS unique_medications,
    SUM(CASE WHEN STOP IS NULL THEN 1 ELSE 0 END) AS active_medications
FROM {{ ref('stg_medications') }}
GROUP BY PATIENT