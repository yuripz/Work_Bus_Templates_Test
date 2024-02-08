insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (34,3401,'UpdateO2Ooperators','UpdateO2Ooperators','Обновление  Оператора в Гермес из CRM B2O ','IN',0,NULL,NULL,0,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UpdateO2Ooperators',  msg_type_own  ='UpdateO2Ooperators',  msg_typedesc  ='Обновление  Оператора в Гермес из CRM B2O ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 0,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=34 and  operation_id=3401 
;