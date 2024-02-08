insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,225,'WsGetPropertyByAddressGlobalIDB2B','WsGetPropertyByAddressGlobalIDB2B','Метод запроса из ОРПОН данных В2В по объектам недвижимости HE-12451','OUT',0,'WsGetPropertyByAddressGlobalIDB2B',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'WsGetPropertyByAddressGlobalIDB2B',  msg_type_own  ='WsGetPropertyByAddressGlobalIDB2B',  msg_typedesc  ='Метод запроса из ОРПОН данных В2В по объектам недвижимости HE-12451',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'WsGetPropertyByAddressGlobalIDB2B',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=225 
;