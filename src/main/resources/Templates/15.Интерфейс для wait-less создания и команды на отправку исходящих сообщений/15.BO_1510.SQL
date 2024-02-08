insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1510,'getWebNRICardViewURL','getWebNRICardViewURL','Запрос на формирование БО-2410 get_4_SLTU_WebNRICard ( получение URL для карточки ), ожидание и возврат ответа от СЛТУ','IN',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'getWebNRICardViewURL',  msg_type_own  ='getWebNRICardViewURL',  msg_typedesc  ='Запрос на формирование БО-2410 get_4_SLTU_WebNRICard ( получение URL для карточки ), ожидание и возврат ответа от СЛТУ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1510 
;