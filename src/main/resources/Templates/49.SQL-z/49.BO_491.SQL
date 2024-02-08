insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (49,491,'SQLquery_001','SQLquery_001','приём на  исполнение параметризирумого параметрами зпроса в шаблон SQL-select','IN',0,NULL,'NoConfirmation',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'SQLquery_001',  msg_type_own  ='SQLquery_001',  msg_typedesc  ='приём на  исполнение параметризирумого параметрами зпроса в шаблон SQL-select',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = 'NoConfirmation',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=49 and  operation_id=491 
;