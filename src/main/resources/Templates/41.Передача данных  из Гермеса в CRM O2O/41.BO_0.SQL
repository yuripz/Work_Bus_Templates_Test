insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (41,0,'Post_O2O_Srv','Post_O2O_Srv','Передача данных  из Гермеса в CRM O2O ','OUT',1,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Post_O2O_Srv',  msg_type_own  ='Post_O2O_Srv',  msg_typedesc  ='Передача данных  из Гермеса в CRM O2O ',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=41 and  operation_id=0 
;