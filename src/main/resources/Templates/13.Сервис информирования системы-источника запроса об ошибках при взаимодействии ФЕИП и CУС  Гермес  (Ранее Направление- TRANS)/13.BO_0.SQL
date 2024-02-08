insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (13,0,'ErrorTransferService','ErrorTransferService','Сервис информирования системы-источника запроса об ошибках при взаимодействии ФЕИП и CУС "Гермес  (Ранее Направление: TRANS) ','IN, OUT',1,'TransferFaultRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ErrorTransferService',  msg_type_own  ='ErrorTransferService',  msg_typedesc  ='Сервис информирования системы-источника запроса об ошибках при взаимодействии ФЕИП и CУС "Гермес  (Ранее Направление: TRANS) ',  msg_direction  ='IN, OUT',  msg_handler = 1,   url_soap_send = 'TransferFaultRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=13 and  operation_id=0 
;