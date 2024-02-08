insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (24,0,'OMS_submitOrder','OMS_submitOrder','WSDL_OMS_submitOrder','IN',0,'OMSWebService',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'OMS_submitOrder',  msg_type_own  ='OMS_submitOrder',  msg_typedesc  ='WSDL_OMS_submitOrder',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'OMSWebService',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=24 and  operation_id=0 
;