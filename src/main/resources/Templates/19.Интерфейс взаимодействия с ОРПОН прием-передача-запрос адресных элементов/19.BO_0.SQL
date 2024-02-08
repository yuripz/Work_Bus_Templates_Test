insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,0,'EAK_ws_PutAddressElement','EAK_ws_PutAddressElement','Интерфейс взаимодействия с ОРПОН прием-передача-запрос адресных элементов','IN',1,'ws_PutAddressElement',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'EAK_ws_PutAddressElement',  msg_type_own  ='EAK_ws_PutAddressElement',  msg_typedesc  ='Интерфейс взаимодействия с ОРПОН прием-передача-запрос адресных элементов',  msg_direction  ='IN',  msg_handler = 1,   url_soap_send = 'ws_PutAddressElement',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=0 
;