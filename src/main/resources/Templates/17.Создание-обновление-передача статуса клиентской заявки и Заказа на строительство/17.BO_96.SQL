insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (17,96,'ManageCRMTaskStatusUpdateRequest','ManageCRMTaskStatusUpdateRequest','Обновление статуса клиентской заявки из Гермес','OUT',1,'hermes_test',NULL,1,10, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ManageCRMTaskStatusUpdateRequest',  msg_type_own  ='ManageCRMTaskStatusUpdateRequest',  msg_typedesc  ='Обновление статуса клиентской заявки из Гермес',  msg_direction  ='OUT',  msg_handler = 1,   url_soap_send = 'hermes_test',  url_soap_ack  = NULL,  max_retry_count = 1,  max_retry_time  = 10,  last_update_dt =sysdate
  where   interface_id=17 and  operation_id=96 
;