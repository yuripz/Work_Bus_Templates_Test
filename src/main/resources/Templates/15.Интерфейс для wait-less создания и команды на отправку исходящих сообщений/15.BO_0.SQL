insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,0,'HRMS_RestInternalService','HRMS_RestInternalService','Интерфейс для wait-less создания и команды на отправку исходящих сообщений','IN',0,'HRMS_RestInternalService',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'HRMS_RestInternalService',  msg_type_own  ='HRMS_RestInternalService',  msg_typedesc  ='Интерфейс для wait-less создания и команды на отправку исходящих сообщений',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'HRMS_RestInternalService',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=0 
;