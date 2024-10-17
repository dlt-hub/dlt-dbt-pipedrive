/* Fact Table: deals */
{{
    config(
        materialized='incremental'
    )
}}

SELECT
    ---- main table deals
    deals.id,
    deals.creator_user_id,
    deals.user_id,
    deals.person_id,
    deals.org_id,
    deals.stage_id,
    deals.title,
    deals.value,
    deals.currency,
    deals.add_time,
    deals.update_time,
    deals.stage_change_time,
    deals.active,
    deals.deleted,
    deals.status,
    deals.next_activity_date,
    deals.next_activity_id,
    deals.visible_to,
    deals.pipeline_id,
    deals.products_count,
    deals.files_count,
    deals.notes_count,
    deals.followers_count,
    deals.email_messages_count,
    deals.activities_count,
    deals.done_activities_count,
    deals.undone_activities_count,
    deals.participants_count,
    deals.expected_close_date,
    deals.origin,
    deals.stage_order_nr,
    deals.person_name,
    deals.org_name,
    deals.next_activity_subject,
    deals.next_activity_type,
    deals.formatted_value,
    deals.weighted_value,
    deals.formatted_weighted_value,
    deals.weighted_value_currency,
    deals.owner_name,
    deals.cc_email,
    deals.org_hidden,
    deals.person_hidden,

    

FROM  {{ ref('stg_deals') }} as deals