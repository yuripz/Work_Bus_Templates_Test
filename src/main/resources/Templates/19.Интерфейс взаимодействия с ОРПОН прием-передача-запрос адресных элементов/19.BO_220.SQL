insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,220,'searchGeoObjectsByCoordinates','searchGeoObjectsByCoordinates','Сервис поиска ГЕО-объектов по координатам для НАСЕЛЕННОГО п/п','OUT',0,'WsSearchGeoObjectsByCoordinates',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'searchGeoObjectsByCoordinates',  msg_type_own  ='searchGeoObjectsByCoordinates',  msg_typedesc  ='Сервис поиска ГЕО-объектов по координатам для НАСЕЛЕННОГО п/п',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'WsSearchGeoObjectsByCoordinates',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=220 
;