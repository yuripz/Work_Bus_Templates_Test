insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (53,531,'nonManageCRMOrderUpdate','nonManageCRMOrderUpdate','приём фиктивного БО=97 для Лиры и ЦМС','IN',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'nonManageCRMOrderUpdate',  msg_type_own  ='nonManageCRMOrderUpdate',  msg_typedesc  ='приём фиктивного БО=97 для Лиры и ЦМС',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=53 and  operation_id=531 
;