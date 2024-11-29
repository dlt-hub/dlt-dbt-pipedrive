/* Table: notes */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.user_id,
    t.deal_id,
    t.person_id,
    t.org_id,
    t.content,
    t.add_time,
    t.update_time,
    t.active_flag,
    t.pinned_to_deal_flag,
    t.pinned_to_person_flag,
    t.pinned_to_organization_flag,
    t.pinned_to_lead_flag,
    t.organization__name,
    t.person__name,
    t.deal__title,
    t.user__email,
    t.user__name,
    t.user__is_you,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_notes') }} as t