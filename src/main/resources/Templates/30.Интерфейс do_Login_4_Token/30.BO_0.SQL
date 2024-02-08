insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (30,0,'do_Login_4_Token_srv','do_Login_4_Token_srv','Интерфейс do_Login_4_Token','IN',0,'do_Login_4_Token','REST',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'do_Login_4_Token_srv',  msg_type_own  ='do_Login_4_Token_srv',  msg_typedesc  ='Интерфейс do_Login_4_Token',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'do_Login_4_Token',  url_soap_ack  = 'REST',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=30 and  operation_id=0 
;