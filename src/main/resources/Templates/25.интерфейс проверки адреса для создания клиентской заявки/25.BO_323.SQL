insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (25,323,'GetDate4OrderRequest','GetDate4OrderRequest','Сервис получения (проверки) контрольных дат по заказу из CMS','IN',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'GetDate4OrderRequest',  msg_type_own  ='GetDate4OrderRequest',  msg_typedesc  ='Сервис получения (проверки) контрольных дат по заказу из CMS',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=25 and  operation_id=323 
;