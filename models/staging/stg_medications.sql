SELECT *
FROM {{ source('bronze', 'medications') }}