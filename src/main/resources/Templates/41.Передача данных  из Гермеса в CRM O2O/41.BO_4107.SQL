insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (41,4107,'UpdateO2OCRMexecSub','UpdateO2OCRMexecSub','Нотификация о назначении исполнителя по подзаявке Подрядчик O2O, ХС O2O, ГПХ O2O из Гермес в CRM B2O','OUT',0,'UpdateO2OCRMexecSub',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UpdateO2OCRMexecSub',  msg_type_own  ='UpdateO2OCRMexecSub',  msg_typedesc  ='Нотификация о назначении исполнителя по подзаявке Подрядчик O2O, ХС O2O, ГПХ O2O из Гермес в CRM B2O',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'UpdateO2OCRMexecSub',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=41 and  operation_id=4107 
;