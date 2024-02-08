insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (71,7103,'GetRequest_Confirmation4Message','GetRequest_Confirmation4Message','Получить Confirmation секцию сообщения (XML)','IN',0,NULL,'NoConfirmation',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'GetRequest_Confirmation4Message',  msg_type_own  ='GetRequest_Confirmation4Message',  msg_typedesc  ='Получить Confirmation секцию сообщения (XML)',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = 'NoConfirmation',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=71 and  operation_id=7103 
;