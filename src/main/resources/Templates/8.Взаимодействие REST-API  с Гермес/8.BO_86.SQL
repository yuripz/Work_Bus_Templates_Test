insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,86,'HTTP_Post_SRV_REST','HTTP_Post_SRV_REST','httpPOST to /HermesSOAPService/GetHttpRequest/HTTP_Get_SRV c REST пост-обработкой','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'HTTP_Post_SRV_REST',  msg_type_own  ='HTTP_Post_SRV_REST',  msg_typedesc  ='httpPOST to /HermesSOAPService/GetHttpRequest/HTTP_Get_SRV c REST пост-обработкой',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=86 
;