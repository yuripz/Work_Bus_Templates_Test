insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (2,0,'R12CommonRequest','R12CommonRequest','!_Прямая интеграция Гермес-R12','IN,OUT',0,'R12CommonRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'R12CommonRequest',  msg_type_own  ='R12CommonRequest',  msg_typedesc  ='!_Прямая интеграция Гермес-R12',  msg_direction  ='IN,OUT',  msg_handler = 0,   url_soap_send = 'R12CommonRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=2 and  operation_id=0 
;