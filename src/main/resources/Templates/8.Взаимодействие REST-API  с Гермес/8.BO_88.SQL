insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,88,'SOAP_Get_SRV','SOAP_Get_SRV','test 10.242.9.70:7001//HermesSOAPService/SOAPServlet/unManageCRM','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'SOAP_Get_SRV',  msg_type_own  ='SOAP_Get_SRV',  msg_typedesc  ='test 10.242.9.70:7001//HermesSOAPService/SOAPServlet/unManageCRM',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=88 
;