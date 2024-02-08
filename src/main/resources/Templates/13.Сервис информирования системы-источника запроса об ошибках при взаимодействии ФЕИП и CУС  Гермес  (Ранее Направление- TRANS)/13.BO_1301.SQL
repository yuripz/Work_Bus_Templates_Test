insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (13,1301,'ErrorTransferReceiver','ErrorTransferReceiver','Операция пиёма запроса об ошибках при взаимодействии ФЕИП и CУС "Гермес','IN',1,NULL,NULL,0,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ErrorTransferReceiver',  msg_type_own  ='ErrorTransferReceiver',  msg_typedesc  ='Операция пиёма запроса об ошибках при взаимодействии ФЕИП и CУС "Гермес',  msg_direction  ='IN',  msg_handler = 1,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 0,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=13 and  operation_id=1301 
;