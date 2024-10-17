
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`
      
    
    

    OPTIONS()
    as (
      /* check if the destination already has a list of processed ids
if not we will process all loads with status 0 (==success) */


SELECT load_id FROM `dlthub-sandbox`.`pipedrive_data`.`_dlt_loads`
WHERE status = 0
/* exclude already processed load_ids */

    );
  