insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,84,'GETSearchGeoObjectsByCoordinates','GETSearchGeoObjectsByCoordinates','Сервис поиска ГЕО-объектов по координатам','IN',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'GETSearchGeoObjectsByCoordinates',  msg_type_own  ='GETSearchGeoObjectsByCoordinates',  msg_typedesc  ='Сервис поиска ГЕО-объектов по координатам',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=84 
;