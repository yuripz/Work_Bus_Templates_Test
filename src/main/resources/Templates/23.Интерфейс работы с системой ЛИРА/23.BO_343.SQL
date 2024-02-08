insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (23,343,'CancelOrderItemRequest','CancelOrderItemRequest','Отмена Наряда в ЛИРЕ action=5','OUT',0,'action=5',NULL,1,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'CancelOrderItemRequest',  msg_type_own  ='CancelOrderItemRequest',  msg_typedesc  ='Отмена Наряда в ЛИРЕ action=5',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'action=5',  url_soap_ack  = NULL,  max_retry_count = 1,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=23 and  operation_id=343 
;