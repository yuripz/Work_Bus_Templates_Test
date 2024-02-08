insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (50,505,'Try_Sleeper','Try_Sleeper_SOAP','проверка на тайм=оут ( SOAP )','OUT',0,'Try_Sleep',NULL,3,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Try_Sleeper',  msg_type_own  ='Try_Sleeper_SOAP',  msg_typedesc  ='проверка на тайм=оут ( SOAP )',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'Try_Sleep',  url_soap_ack  = NULL,  max_retry_count = 3,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=50 and  operation_id=505 
;