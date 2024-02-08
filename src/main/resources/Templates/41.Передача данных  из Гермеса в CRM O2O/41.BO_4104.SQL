insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (41,4104,'UpdateO2OCRMproblem','UpdateO2OCRMproblem','Обновление Проблемы в процессе строительства O2O из Гермес в CRM B2O','OUT',0,'UpdateO2OCRMproblem',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'UpdateO2OCRMproblem',  msg_type_own  ='UpdateO2OCRMproblem',  msg_typedesc  ='Обновление Проблемы в процессе строительства O2O из Гермес в CRM B2O',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'UpdateO2OCRMproblem',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=41 and  operation_id=4104 
;