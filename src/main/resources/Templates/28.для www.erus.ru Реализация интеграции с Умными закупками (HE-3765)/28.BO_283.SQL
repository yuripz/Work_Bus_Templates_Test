insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (28,283,'PutXML_Contract','PutXML_Contract','HE-3765','OUT',0,NULL,NULL,1,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'PutXML_Contract',  msg_type_own  ='PutXML_Contract',  msg_typedesc  ='HE-3765',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 1,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=28 and  operation_id=283 
;