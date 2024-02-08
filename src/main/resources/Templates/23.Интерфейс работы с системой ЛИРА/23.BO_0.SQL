insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (23,0,'UserAccountRequest','UserAccountRequest','Интерфейс работы с системой ЛИРА','IN',0,'AcceptOrderItem_Srv',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UserAccountRequest',  msg_type_own  ='UserAccountRequest',  msg_typedesc  ='Интерфейс работы с системой ЛИРА',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'AcceptOrderItem_Srv',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=23 and  operation_id=0 
;