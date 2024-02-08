insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (28,0,'ERUS_RU_srv','ERUS_RU_srv','для www.erus.ru Реализация интеграции с Умными закупками (HE-3765)','IN,OUT',0,'ERUS_RU',NULL,1,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ERUS_RU_srv',  msg_type_own  ='ERUS_RU_srv',  msg_typedesc  ='для www.erus.ru Реализация интеграции с Умными закупками (HE-3765)',  msg_direction  ='IN,OUT',  msg_handler = 0,   url_soap_send = 'ERUS_RU',  url_soap_ack  = NULL,  max_retry_count = 1,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=28 and  operation_id=0 
;