SELECT 
    PATIENT AS patient_id,
    COUNT(*) AS total_encounters,
    COUNT(DISTINCT REASONCODE) AS unique_enc_reasons
FROM {{ ref('stg_encounters') }}
GROUP BY PATIENT