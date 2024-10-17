
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`dim_products__prices`
      
    
    

    OPTIONS()
    as (
      /* Table: products__prices */
/* Parent: products */

SELECT
    t.id,
    t.product_id,
    t.price,
    t.currency,
    t.cost,
    t.notes,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_products__prices` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_products` as pt
ON (t._dlt_parent_id = pt._dlt_id)
    );
  