insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (1,0,'Dictionary','Dictionary','Интерфейс справочников','IN',0,'DictionaryRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Dictionary',  msg_type_own  ='Dictionary',  msg_typedesc  ='Интерфейс справочников',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'DictionaryRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=1 and  operation_id=0 
;