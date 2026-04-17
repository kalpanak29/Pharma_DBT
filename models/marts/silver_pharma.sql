SELECT 
    p.patient AS patient_id,
    p.name,
    p.gender,
    p.is_alive,

    e.total_encounters,
    e.unique_enc_reasons,

    m.total_medications,
    m.unique_medications,
    m.active_medications,

    pr.total_procedures,
    pr.unique_procedures

FROM {{ ref('stg_patients') }} p
LEFT JOIN {{ ref('int_encounters') }} e
    ON p.patient = e.patient_id
LEFT JOIN {{ ref('int_medications') }} m
    ON p.patient = m.patient_id
LEFT JOIN {{ ref('int_procedures') }} pr
    ON p.patient = pr.patient_id