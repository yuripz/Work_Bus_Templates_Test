insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (12,1247,'ConfirmManageInputOrder','ConfirmManageInputOrder','Получение подтверждений для Создание приказов о вводе','IN',0,NULL,NULL,0,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ConfirmManageInputOrder',  msg_type_own  ='ConfirmManageInputOrder',  msg_typedesc  ='Получение подтверждений для Создание приказов о вводе',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 0,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=12 and  operation_id=1247 
;