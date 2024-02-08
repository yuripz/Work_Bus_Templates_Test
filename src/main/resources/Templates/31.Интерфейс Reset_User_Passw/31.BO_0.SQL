insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (31,0,'Reset_User_Passw_srv','Reset_User_Passw_srv','Интерфейс Reset_User_Passw','IN',0,'Reset_User_Passw','REST',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Reset_User_Passw_srv',  msg_type_own  ='Reset_User_Passw_srv',  msg_typedesc  ='Интерфейс Reset_User_Passw',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'Reset_User_Passw',  url_soap_ack  = 'REST',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=31 and  operation_id=0 
;