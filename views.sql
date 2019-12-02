CREATE VIEW bmdelacruz2.warehouses_inner_join_view 
AS 
SELECT bmdelacruz2.warehouses.id, bmdelacruz2.warehouses.location, bmdelacruz2.warehouses.warehouse_type_id, bmdelacruz2.warehouse_types.type 
FROM bmdelacruz2.warehouses 
INNER JOIN bmdelacruz2.warehouse_types on bmdelacruz2.warehouses.warehouse_type_id = bmdelacruz2.warehouse_types.id 
ORDER BY bmdelacruz2.warehouses.id ASC;


CREATE VIEW bmdelacruz2.warehouses_left_join_view 
AS SELECT bmdelacruz2.warehouses.id, bmdelacruz2.warehouses.location, bmdelacruz2.warehouses.warehouse_type_id, bmdelacruz2.warehouse_types.type 
FROM bmdelacruz2.warehouses 
LEFT JOIN bmdelacruz2.warehouse_types on bmdelacruz2.warehouses.warehouse_type_id = bmdelacruz2.warehouse_types.id 
ORDER BY bmdelacruz2.warehouses.id ASC;


CREATE VIEW bmdelacruz2.warehouses_right_join_view 
AS SELECT bmdelacruz2.warehouses.id, bmdelacruz2.warehouses.location, bmdelacruz2.warehouses.warehouse_type_id, bmdelacruz2.warehouse_types.type 
FROM bmdelacruz2.warehouses 
RIGHT JOIN bmdelacruz2.warehouse_types on bmdelacruz2.warehouses.warehouse_type_id = bmdelacruz2.warehouse_types.id 
ORDER BY bmdelacruz2.warehouses.id ASC;