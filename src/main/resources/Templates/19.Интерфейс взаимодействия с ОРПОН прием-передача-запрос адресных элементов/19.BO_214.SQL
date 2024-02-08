insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,214,'WsGetAddrLocalIDByGlobalIDPortType','WsGetAddrLocalIDByGlobalIDPortType','Сервис для получения ЛИД по ГИД','OUT',0,'WsGetAddrLocalIDByGlobalIDPortType',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'WsGetAddrLocalIDByGlobalIDPortType',  msg_type_own  ='WsGetAddrLocalIDByGlobalIDPortType',  msg_typedesc  ='Сервис для получения ЛИД по ГИД',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'WsGetAddrLocalIDByGlobalIDPortType',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=214 
;