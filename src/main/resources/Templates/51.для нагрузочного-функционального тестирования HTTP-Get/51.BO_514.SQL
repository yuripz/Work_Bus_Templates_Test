insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (51,514,'HTTP_Put_OUT','HTTP_Put_OUT','исходящее - функционального тестирования HTTP-Put','OUT',1,'HTTP_Get_SRV',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'HTTP_Put_OUT',  msg_type_own  ='HTTP_Put_OUT',  msg_typedesc  ='исходящее - функционального тестирования HTTP-Put',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = 'HTTP_Get_SRV',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=51 and  operation_id=514 
;