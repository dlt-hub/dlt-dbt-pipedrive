/* Table: persons__labels */
/* Parent: persons */

SELECT
    t.value,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_persons__labels` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_persons` as pt
ON (t._dlt_parent_id = pt._dlt_id)