insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (5,0,'ContractAccounting','ContractAccounting','Договорный учет','IN',0,'ContractAccountingRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ContractAccounting',  msg_type_own  ='ContractAccounting',  msg_typedesc  ='Договорный учет',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'ContractAccountingRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=5 and  operation_id=0 
;