insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,216,'WsGetAddrElemByLocalIDSyncPortType','WsGetAddrElemByLocalIDSyncPortType','Сервис для получения ГИД by ЛИД','OUT',0,'WsGetAddrElemByLocalIDSyncPortType',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'WsGetAddrElemByLocalIDSyncPortType',  msg_type_own  ='WsGetAddrElemByLocalIDSyncPortType',  msg_typedesc  ='Сервис для получения ГИД by ЛИД',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'WsGetAddrElemByLocalIDSyncPortType',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=216 
;