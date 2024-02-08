insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (26,403,'syncCentralOfficeRequest','syncCentralOfficeRequest','Запрос на получение центров узлов (опорных точек) из СЛТУ','OUT',2,'?action=http://nri.rt.ru/NetworkCapability/NetworkCapabilityApi/syncCentralOffice',NULL,2,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'syncCentralOfficeRequest',  msg_type_own  ='syncCentralOfficeRequest',  msg_typedesc  ='Запрос на получение центров узлов (опорных точек) из СЛТУ',  msg_direction  ='OUT',  msg_handler = 2,   url_soap_send = '?action=http://nri.rt.ru/NetworkCapability/NetworkCapabilityApi/syncCentralOffice',  url_soap_ack  = NULL,  max_retry_count = 2,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=26 and  operation_id=403 
;