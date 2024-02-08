insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1513,'LoadGetDate4OrderRequest','LoadGetDate4OrderRequest','формирование БО-223 для нагрузочного тестирования Получения контрольных дат по заказу из CMS','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'LoadGetDate4OrderRequest',  msg_type_own  ='LoadGetDate4OrderRequest',  msg_typedesc  ='формирование БО-223 для нагрузочного тестирования Получения контрольных дат по заказу из CMS',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1513 
;