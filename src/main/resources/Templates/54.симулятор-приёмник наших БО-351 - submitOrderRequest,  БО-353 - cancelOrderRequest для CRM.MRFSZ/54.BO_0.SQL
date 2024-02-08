insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (54,0,'OUT_OrderRequest_Srv','OUT_OrderRequest_Srv','симулятор-приёмник наших БО-351 - submitOrderRequest,  БО-353 - cancelOrderRequest для CRM.MRFSZ','IN',0,'OUT_OrderRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'OUT_OrderRequest_Srv',  msg_type_own  ='OUT_OrderRequest_Srv',  msg_typedesc  ='симулятор-приёмник наших БО-351 - submitOrderRequest,  БО-353 - cancelOrderRequest для CRM.MRFSZ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'OUT_OrderRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=54 and  operation_id=0 
;