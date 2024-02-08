insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (36,0,'Update_O2O_contracts_srv','Update_O2O_contracts_srv','Интерфейс UpdateO2Ocontracts Обновление  Договора в Гермес из CRM B2O','IN',0,'UpdateO2Ocontracts',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Update_O2O_contracts_srv',  msg_type_own  ='Update_O2O_contracts_srv',  msg_typedesc  ='Интерфейс UpdateO2Ocontracts Обновление  Договора в Гермес из CRM B2O',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'UpdateO2Ocontracts',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=36 and  operation_id=0 
;