insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1506,'onlineCreate4MapGeoObject','onlineCreate4MapGeoObject','Запрос на создание , ожидание и возврат ответа от сформированного БО-218 (НЕ Частный сектор) WsSaveGeoObject (создание ГО )','IN',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'onlineCreate4MapGeoObject',  msg_type_own  ='onlineCreate4MapGeoObject',  msg_typedesc  ='Запрос на создание , ожидание и возврат ответа от сформированного БО-218 (НЕ Частный сектор) WsSaveGeoObject (создание ГО )',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1506 
;