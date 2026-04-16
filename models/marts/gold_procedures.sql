SELECT 
    COUNT(*) AS total_procedures
FROM {{ ref('int_procedures') }}