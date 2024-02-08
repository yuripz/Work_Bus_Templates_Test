insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (11,0,'Project ','Project ','Интерфейс проектов ','IN',0,'ActiveCostRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Project ',  msg_type_own  ='Project ',  msg_typedesc  ='Интерфейс проектов ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'ActiveCostRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=11 and  operation_id=0 
;