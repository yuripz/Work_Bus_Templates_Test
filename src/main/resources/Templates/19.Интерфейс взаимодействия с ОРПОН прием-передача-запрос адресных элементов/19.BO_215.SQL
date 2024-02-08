insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (19,215,'GetFIASbyGlobalId','GetFIASbyGlobalId','для получения адреса из ОРПОН с кодом FIAS','OUT',2,'GetFIASbyGlobalId',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'GetFIASbyGlobalId',  msg_type_own  ='GetFIASbyGlobalId',  msg_typedesc  ='для получения адреса из ОРПОН с кодом FIAS',  msg_direction  ='OUT',  msg_handler = 2,   url_soap_send = 'GetFIASbyGlobalId',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=19 and  operation_id=215 
;