insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (12,0,'ConfirmationOutR12','ConfirmationOutR12','Получение подтверждений из R12 ( Направление было ACK )','IN, OUT',0,'ConfirmationOutR12Request',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ConfirmationOutR12',  msg_type_own  ='ConfirmationOutR12',  msg_typedesc  ='Получение подтверждений из R12 ( Направление было ACK )',  msg_direction  ='IN, OUT',  msg_handler = 0,   url_soap_send = 'ConfirmationOutR12Request',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=12 and  operation_id=0 
;