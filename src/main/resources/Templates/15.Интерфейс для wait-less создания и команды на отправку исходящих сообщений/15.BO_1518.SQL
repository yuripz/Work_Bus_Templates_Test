insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1518,'onlineGetLineLimitation','onlineGetLineLimitation','запрос от Гермес на формирование БО-428 для GetLineLimitation, возвращающий JSon-ответ СЛТУ ','IN',0,NULL,'REST',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'onlineGetLineLimitation',  msg_type_own  ='onlineGetLineLimitation',  msg_typedesc  ='запрос от Гермес на формирование БО-428 для GetLineLimitation, возвращающий JSon-ответ СЛТУ ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = 'REST',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1518 
;