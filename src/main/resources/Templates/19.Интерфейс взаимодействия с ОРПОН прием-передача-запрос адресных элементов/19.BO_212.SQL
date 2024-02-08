insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,212,'ReverseGeocodeLocalityRequest','ReverseGeocodeLocalityRequest','Сервис поиска НАСЕЛЕННОГО п/п для ГЕО-объектов по координатам','OUT',0,'WsGetLocalityByCoordinatesSync',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ReverseGeocodeLocalityRequest',  msg_type_own  ='ReverseGeocodeLocalityRequest',  msg_typedesc  ='Сервис поиска НАСЕЛЕННОГО п/п для ГЕО-объектов по координатам',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'WsGetLocalityByCoordinatesSync',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=212 
;