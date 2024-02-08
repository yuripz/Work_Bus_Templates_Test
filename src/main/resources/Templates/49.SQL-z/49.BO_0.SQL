insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (49,0,'SQLquery_srv','SQLquery_srv','SQL-z','IN',0,'SQLquery_srv','REST',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'SQLquery_srv',  msg_type_own  ='SQLquery_srv',  msg_typedesc  ='SQL-z',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'SQLquery_srv',  url_soap_ack  = 'REST',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=49 and  operation_id=0 
;