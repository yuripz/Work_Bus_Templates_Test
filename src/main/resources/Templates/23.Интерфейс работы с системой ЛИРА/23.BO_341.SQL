insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (23,341,'CreateOrderItemRequest','CreateOrderItemRequest','Создание наряда на порт или линию','OUT',0,'action=1',NULL,1,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'CreateOrderItemRequest',  msg_type_own  ='CreateOrderItemRequest',  msg_typedesc  ='Создание наряда на порт или линию',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'action=1',  url_soap_ack  = NULL,  max_retry_count = 1,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=23 and  operation_id=341 
;