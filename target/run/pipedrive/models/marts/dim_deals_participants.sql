
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_deals_participants`
      
    
    

    OPTIONS()
    as (
      /* Table: deals_participants */

SELECT
    t.id,
    t.person_id__active_flag,
    t.person_id__name,
    t.person_id__owner_id,
    t.person_id__value,
    t.add_time,
    t.active_flag,
    t.related_item_data__deal_id,
    t.related_item_data__title,
    t.person__id,
    t.person__company_id,
    t.person__owner_id__id,
    t.person__owner_id__name,
    t.person__owner_id__email,
    t.person__owner_id__has_pic,
    t.person__owner_id__active_flag,
    t.person__owner_id__value,
    t.person__org_id__name,
    t.person__org_id__people_count,
    t.person__org_id__owner_id,
    t.person__org_id__active_flag,
    t.person__org_id__cc_email,
    t.person__org_id__owner_name,
    t.person__org_id__value,
    t.person__name,
    t.person__first_name,
    t.person__open_deals_count,
    t.person__related_open_deals_count,
    t.person__closed_deals_count,
    t.person__related_closed_deals_count,
    t.person__participant_open_deals_count,
    t.person__participant_closed_deals_count,
    t.person__email_messages_count,
    t.person__activities_count,
    t.person__done_activities_count,
    t.person__undone_activities_count,
    t.person__files_count,
    t.person__notes_count,
    t.person__followers_count,
    t.person__won_deals_count,
    t.person__related_won_deals_count,
    t.person__lost_deals_count,
    t.person__related_lost_deals_count,
    t.person__active_flag,
    t.person__first_char,
    t.person__update_time,
    t.person__add_time,
    t.person__visible_to,
    t.person__sync_needed,
    t.person__org_name,
    t.person__owner_name,
    t.person__primary_email,
    t.person___8c765c39b4685f0ed9fe839a594f8bb7374df744,
    t.person__cc_email,
    t.added_by_user_id__id,
    t.added_by_user_id__name,
    t.added_by_user_id__email,
    t.added_by_user_id__has_pic,
    t.added_by_user_id__active_flag,
    t.added_by_user_id__value,
    t.related_item_type,
    t.related_item_id,
    t._dlt_load_id,
    t._dlt_id,
    t.person__last_name,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_participants` as t
    );
  