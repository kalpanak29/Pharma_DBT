SELECT *
FROM {{ source('bronze', 'procedures') }}