insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (39,0,'UpdateO2OworkTypes_srv','UpdateO2OworkTypes_srv','Интерфейс Нотификация по Проблеме в процессе строительства O2O ','IN',0,'UpdateO2OworkTypes',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UpdateO2OworkTypes_srv',  msg_type_own  ='UpdateO2OworkTypes_srv',  msg_typedesc  ='Интерфейс Нотификация по Проблеме в процессе строительства O2O ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'UpdateO2OworkTypes',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=39 and  operation_id=0 
;