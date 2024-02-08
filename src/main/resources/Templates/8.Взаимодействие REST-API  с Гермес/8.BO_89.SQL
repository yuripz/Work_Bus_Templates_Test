insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,89,'HTTP_Get_SRV','HTTP_Get_SRV','тест  http://10.242.9.70:7001/HermesSOAPService/GetHttpRequest/HTTP_Get_SRV?Id_Adderss=139123697','OUT',1,'HTTP_Get_SRV',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'HTTP_Get_SRV',  msg_type_own  ='HTTP_Get_SRV',  msg_typedesc  ='тест  http://10.242.9.70:7001/HermesSOAPService/GetHttpRequest/HTTP_Get_SRV?Id_Adderss=139123697',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = 'HTTP_Get_SRV',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=89 
;