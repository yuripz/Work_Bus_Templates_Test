insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,0,'Hermes_Integration_srv','Hermes_Integration_srv','Взаимодействие REST-API  с Гермес','IN, OUT',0,'Hermes_Integration_srv',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Hermes_Integration_srv',  msg_type_own  ='Hermes_Integration_srv',  msg_typedesc  ='Взаимодействие REST-API  с Гермес',  msg_direction  ='IN, OUT',  msg_handler = 0,   url_soap_send = 'Hermes_Integration_srv',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=0 
;