SELECT *
FROM {{ source('bronze', 'procedures') }}
WHERE PATIENT IS NOT NULL