insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,213,'WsGetAddrElemByGlobalIDAsyncPortType','WsGetAddrElemByGlobalIDAsyncPortType','Метод запроса на выгрузку адресного элемента по глобальному ИД','OUT',1,'WsGetAddrElemByGlobalIDAsyncPortType',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'WsGetAddrElemByGlobalIDAsyncPortType',  msg_type_own  ='WsGetAddrElemByGlobalIDAsyncPortType',  msg_typedesc  ='Метод запроса на выгрузку адресного элемента по глобальному ИД',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = 'WsGetAddrElemByGlobalIDAsyncPortType',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=213 
;