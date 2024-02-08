insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (24,2416,'submitCARMOrder','submitCARMOrder','Запрос из Гермес на формирование заданий в ЦАРМ (метод submitOrder)','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'submitCARMOrder',  msg_type_own  ='submitCARMOrder',  msg_typedesc  ='Запрос из Гермес на формирование заданий в ЦАРМ (метод submitOrder)',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=24 and  operation_id=2416 
;