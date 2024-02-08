insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (13,1302,'TransferFaultRequest','TransferFaultRequest','Операция отправки запроса об ошибках при взаимодействии R12 и CУС "Гермес','OUT',0,'ErrorTransfer/Service',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'TransferFaultRequest',  msg_type_own  ='TransferFaultRequest',  msg_typedesc  ='Операция отправки запроса об ошибках при взаимодействии R12 и CУС "Гермес',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'ErrorTransfer/Service',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=13 and  operation_id=1302 
;