insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1514,'LoadCheckAddress4Order','LoadCheckAddress4Order','формирование БО-221 для нагрузочного тестирования Проверки адреса для создания клиентской заявки','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'LoadCheckAddress4Order',  msg_type_own  ='LoadCheckAddress4Order',  msg_typedesc  ='формирование БО-221 для нагрузочного тестирования Проверки адреса для создания клиентской заявки',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1514 
;