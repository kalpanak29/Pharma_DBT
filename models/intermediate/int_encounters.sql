SELECT 
    ID           AS encounter_id,
    PATIENT      AS patient_id,
    DATE         AS encounter_date,
    CODE,
    DESCRIPTION,
    REASONCODE,
    REASONDESCRIPTION
FROM {{ ref('stg_encounters') }}