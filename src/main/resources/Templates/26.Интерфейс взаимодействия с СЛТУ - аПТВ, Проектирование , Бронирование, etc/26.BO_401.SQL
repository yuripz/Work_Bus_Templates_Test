insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (26,401,'checkAccessCapabilityRequest','checkAccessCapabilityRequest','запрос на АвтоПТВ','OUT',2,'?action=http://nri.rt.ru/NetworkCapability/NetworkCapabilityApi/checkAccessCapability',NULL,5,30, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'checkAccessCapabilityRequest',  msg_type_own  ='checkAccessCapabilityRequest',  msg_typedesc  ='запрос на АвтоПТВ',  msg_direction  ='OUT',  msg_handler = 2,   url_soap_send = '?action=http://nri.rt.ru/NetworkCapability/NetworkCapabilityApi/checkAccessCapability',  url_soap_ack  = NULL,  max_retry_count = 5,  max_retry_time  = 30,  last_update_dt =sysdate
  where   interface_id=26 and  operation_id=401 
;