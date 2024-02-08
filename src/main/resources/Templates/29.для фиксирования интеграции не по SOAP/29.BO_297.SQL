insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (29,297,'callScript4Document2DWH','callScript4Document2DWH','Запуск sh-script для сохранение документа в АПД из ARTX_PROJ.Order_Attachments по заявке','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'callScript4Document2DWH',  msg_type_own  ='callScript4Document2DWH',  msg_typedesc  ='Запуск sh-script для сохранение документа в АПД из ARTX_PROJ.Order_Attachments по заявке',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=29 and  operation_id=297 
;