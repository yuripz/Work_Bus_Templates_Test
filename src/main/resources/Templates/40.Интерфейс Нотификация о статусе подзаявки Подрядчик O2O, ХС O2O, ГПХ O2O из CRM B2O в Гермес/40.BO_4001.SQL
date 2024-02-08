insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (40,4001,'UpdateO2Osub','UpdateO2Osub','Нотификация о статусе подзаявки Подрядчик O2O, ХС O2O, ГПХ O2O  в Гермес из CRM O2O ','IN',0,NULL,NULL,0,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UpdateO2Osub',  msg_type_own  ='UpdateO2Osub',  msg_typedesc  ='Нотификация о статусе подзаявки Подрядчик O2O, ХС O2O, ГПХ O2O  в Гермес из CRM O2O ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 0,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=40 and  operation_id=4001 
;