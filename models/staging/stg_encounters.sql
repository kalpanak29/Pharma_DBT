SELECT *
FROM {{ source('bronze', 'encounters') }}
WHERE PATIENT IS NOT NULL