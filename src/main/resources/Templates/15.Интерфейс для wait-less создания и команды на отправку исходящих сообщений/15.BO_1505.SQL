insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1505,'onlineAddressElementGlobalIDData','onlineAddressElementGlobalIDData','Rest-JSON со стороны Гермес запроса в ОРПОН вернуть адресс по GID: порождает БО-217','IN',0,NULL,'REST',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'onlineAddressElementGlobalIDData',  msg_type_own  ='onlineAddressElementGlobalIDData',  msg_typedesc  ='Rest-JSON со стороны Гермес запроса в ОРПОН вернуть адресс по GID: порождает БО-217',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = 'REST',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1505 
;