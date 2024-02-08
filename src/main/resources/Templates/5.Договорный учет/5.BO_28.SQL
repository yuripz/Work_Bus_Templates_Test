insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (5,28,'ManageOrderRequest','ManageOrderRequest','Корректировка заказов','OUT',1,'ContractAccounting/Service',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ManageOrderRequest',  msg_type_own  ='ManageOrderRequest',  msg_typedesc  ='Корректировка заказов',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = 'ContractAccounting/Service',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=5 and  operation_id=28 
;