insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (3,19,'NCManageExtCancellationDocDeliveryInProjectRequest','NCManageExtCancellationDocDeliveryInProjectRequest','Выдача оборудования в проекты','OUT',1,'ExtStockMovements/Service',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'NCManageExtCancellationDocDeliveryInProjectRequest',  msg_type_own  ='NCManageExtCancellationDocDeliveryInProjectRequest',  msg_typedesc  ='Выдача оборудования в проекты',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = 'ExtStockMovements/Service',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=3 and  operation_id=19 
;