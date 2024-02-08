insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (2,20,'R12DirectINRequest','R12DirectINRequest','Всеядный приёмник','IN',0,NULL,'ConfirmationServiceInR12/Service',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'R12DirectINRequest',  msg_type_own  ='R12DirectINRequest',  msg_typedesc  ='Всеядный приёмник',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = 'ConfirmationServiceInR12/Service',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=2 and  operation_id=20 
;