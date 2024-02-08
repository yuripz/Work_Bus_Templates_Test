insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (40,0,'UpdateO2Osub_srv','UpdateO2Osub_srv','Интерфейс Нотификация о статусе подзаявки Подрядчик O2O, ХС O2O, ГПХ O2O из CRM B2O в Гермес','IN',0,'UpdateO2Osub',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UpdateO2Osub_srv',  msg_type_own  ='UpdateO2Osub_srv',  msg_typedesc  ='Интерфейс Нотификация о статусе подзаявки Подрядчик O2O, ХС O2O, ГПХ O2O из CRM B2O в Гермес',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'UpdateO2Osub',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=40 and  operation_id=0 
;