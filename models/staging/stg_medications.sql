SELECT *
FROM {{ source('bronze', 'medications') }}
WHERE PATIENT IS NOT NULL