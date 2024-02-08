insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1507,'asyncPutDocument2DWH','asyncPutDocument2DWH','Запрос на запуск sh-script для сохранение документа в АПД из ARTX_PROJ.Order_Attachments по заявке','IN',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'asyncPutDocument2DWH',  msg_type_own  ='asyncPutDocument2DWH',  msg_typedesc  ='Запрос на запуск sh-script для сохранение документа в АПД из ARTX_PROJ.Order_Attachments по заявке',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1507 
;