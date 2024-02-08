insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (6,32,'ManageInvoiceRequest','ManageInvoiceRequest','Импорт счетов фактур','OUT',1,'InvoiceAccounting/Service',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ManageInvoiceRequest',  msg_type_own  ='ManageInvoiceRequest',  msg_typedesc  ='Импорт счетов фактур',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = 'InvoiceAccounting/Service',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=6 and  operation_id=32 
;