insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (18,0,'orderStatusNotification_srv','orderStatusNotification_srv','servlet for orderStatusNotification','IN',0,'orderStatus',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'orderStatusNotification_srv',  msg_type_own  ='orderStatusNotification_srv',  msg_typedesc  ='servlet for orderStatusNotification',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'orderStatus',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=18 and  operation_id=0 
;