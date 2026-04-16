SELECT *
FROM {{ source('bronze', 'encounters') }}
WHERE patient IS NOT NULL