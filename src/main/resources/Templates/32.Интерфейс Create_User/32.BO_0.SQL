insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (32,0,'Create_User_srv','Create_User_srv','Интерфейс Create_User','IN',0,'Create_User','REST',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Create_User_srv',  msg_type_own  ='Create_User_srv',  msg_typedesc  ='Интерфейс Create_User',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'Create_User',  url_soap_ack  = 'REST',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=32 and  operation_id=0 
;