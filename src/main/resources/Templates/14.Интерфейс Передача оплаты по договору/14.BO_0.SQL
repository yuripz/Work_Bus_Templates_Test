insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (14,0,'ContractPayment','ContractPayment','Интерфейс Передача оплаты по договору','IN',1,'ContractPaymentRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ContractPayment',  msg_type_own  ='ContractPayment',  msg_typedesc  ='Интерфейс Передача оплаты по договору',  msg_direction  ='IN',  msg_handler = 1,   url_soap_send = 'ContractPaymentRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=14 and  operation_id=0 
;