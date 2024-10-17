
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_products`
      
    
    

    OPTIONS()
    as (
      /* Table: products */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'products' */
    id,
    name,
    code,
    tax,
    active_flag,
    selectable,
    first_char,
    visible_to,
    owner_id,
    add_time,
    update_time,
    owner_name,
    category,
    test_field_1,
    _dlt_load_id,
    _dlt_id,
    description,
    unit,
    spam,
FROM `dlthub-sandbox`.`pipedrive_data`.`products`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids` )
    );
  