insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (6,0,'CreditorRequest','CreditorRequest ','Интерфейс приема из R12 статуса СФ','IN',1,'CreditorRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'CreditorRequest',  msg_type_own  ='CreditorRequest ',  msg_typedesc  ='Интерфейс приема из R12 статуса СФ',  msg_direction  ='IN',  msg_handler = 1,   url_soap_send = 'CreditorRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=6 and  operation_id=0 
;