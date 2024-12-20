/* Table: organizations */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'organizations' */
    id,
    company_id,
    owner_id,
    name,
    open_deals_count,
    related_open_deals_count,
    closed_deals_count,
    related_closed_deals_count,
    email_messages_count,
    people_count,
    activities_count,
    done_activities_count,
    undone_activities_count,
    files_count,
    notes_count,
    followers_count,
    won_deals_count,
    related_won_deals_count,
    lost_deals_count,
    related_lost_deals_count,
    active_flag,
    first_char,
    update_time,
    add_time,
    visible_to,
    last_activity_id,
    last_activity_date,
    cc_email,
    owner_name,
    _dlt_load_id,
    _dlt_id,
    next_activity_date,
    next_activity_id,
FROM {{ source('raw_data', 'organizations') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )