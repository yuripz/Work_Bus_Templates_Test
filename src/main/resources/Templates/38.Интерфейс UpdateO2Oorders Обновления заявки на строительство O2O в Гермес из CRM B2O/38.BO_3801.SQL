insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (38,3801,'UpdateO2Oorders','UpdateO2Oorders','Обновление заявки на строительство O2O в Гермес из CRM B2O ','IN',0,NULL,NULL,0,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UpdateO2Oorders',  msg_type_own  ='UpdateO2Oorders',  msg_typedesc  ='Обновление заявки на строительство O2O в Гермес из CRM B2O ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 0,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=38 and  operation_id=3801 
;