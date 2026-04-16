SELECT 
    e.*,
    p.id AS patient_id
FROM {{ ref('stg_encounters') }} e
LEFT JOIN {{ ref('stg_patients') }} p
ON e.patient = p.id