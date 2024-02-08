insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (70,719,'MessageQueueLogGetList','MessageQueueLogGetList','Просмотр списка записей журнала получения/отправки запросов во внешние системы ','IN',0,NULL,'NoConfirmation',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'MessageQueueLogGetList',  msg_type_own  ='MessageQueueLogGetList',  msg_typedesc  ='Просмотр списка записей журнала получения/отправки запросов во внешние системы ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = 'NoConfirmation',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=70 and  operation_id=719 
;