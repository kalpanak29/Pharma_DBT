SELECT *
FROM {{ ref('int_encounters') }}
WHERE patient_id IS NOT NULL