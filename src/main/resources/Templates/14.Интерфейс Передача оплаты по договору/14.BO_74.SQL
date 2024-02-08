insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (14,74,'ManageContractPaymentRequest','ManageContractPaymentRequest','Передача оплаты по договору','IN',1,NULL,'ConfirmationServiceInR12/Service',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ManageContractPaymentRequest',  msg_type_own  ='ManageContractPaymentRequest',  msg_typedesc  ='Передача оплаты по договору',  msg_direction  ='IN',  msg_handler = 1,   url_soap_send = NULL,  url_soap_ack  = 'ConfirmationServiceInR12/Service',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=14 and  operation_id=74 
;