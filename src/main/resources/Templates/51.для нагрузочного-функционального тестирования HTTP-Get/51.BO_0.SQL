insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (51,0,'HTTP_Get','HTTP_Get_SRV','для нагрузочного/функционального тестирования HTTP-Get','IN',0,'HTTP_Get_SRV',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'HTTP_Get',  msg_type_own  ='HTTP_Get_SRV',  msg_typedesc  ='для нагрузочного/функционального тестирования HTTP-Get',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'HTTP_Get_SRV',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=51 and  operation_id=0 
;