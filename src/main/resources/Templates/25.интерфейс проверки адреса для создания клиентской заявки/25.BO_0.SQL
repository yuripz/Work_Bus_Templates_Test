insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (25,0,'oms_CheckAddress4Order','oms_CheckAddress4Order','интерфейс проверки адреса для создания клиентской заявки','IN',0,'CheckAddress4OrderRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'oms_CheckAddress4Order',  msg_type_own  ='oms_CheckAddress4Order',  msg_typedesc  ='интерфейс проверки адреса для создания клиентской заявки',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'CheckAddress4OrderRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=25 and  operation_id=0 
;