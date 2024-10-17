
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_persons`
      
    
    

    OPTIONS()
    as (
      /* Table: persons */

SELECT
    t.id,
    t.company_id,
    t.owner_id,
    t.name,
    t.first_name,
    t.open_deals_count,
    t.related_open_deals_count,
    t.closed_deals_count,
    t.related_closed_deals_count,
    t.participant_open_deals_count,
    t.participant_closed_deals_count,
    t.email_messages_count,
    t.activities_count,
    t.done_activities_count,
    t.undone_activities_count,
    t.files_count,
    t.notes_count,
    t.followers_count,
    t.won_deals_count,
    t.related_won_deals_count,
    t.lost_deals_count,
    t.related_lost_deals_count,
    t.active_flag,
    t.first_char,
    t.update_time,
    t.add_time,
    t.visible_to,
    t.owner_name,
    t.cc_email,
    t._dlt_load_id,
    t._dlt_id,
    t.last_name,
    t.org_id,
    t.org_name,
    t.test_field_1,
    t.next_activity_date,
    t.next_activity_id,
    t.test_field_2,
    t.label,
    t.single_option,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_persons` as t
    );
  