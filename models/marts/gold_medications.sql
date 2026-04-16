SELECT 
    COUNT(*) AS total_medications
FROM {{ ref('int_medications') }}