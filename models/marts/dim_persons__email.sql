/* Table: persons__email */
/* Parent: persons */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.label,
    t.value,
    t.primary,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_persons__email') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_persons') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)