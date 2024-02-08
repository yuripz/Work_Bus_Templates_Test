insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (1,64,'ManagePreciousMetalsDicRequest','ManagePreciousMetalsDicRequest','Справочник -  Драгоценные металлы','IN',1,NULL,'ConfirmationServiceInR12/Service',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ManagePreciousMetalsDicRequest',  msg_type_own  ='ManagePreciousMetalsDicRequest',  msg_typedesc  ='Справочник -  Драгоценные металлы',  msg_direction  ='IN',  msg_handler = 1,   url_soap_send = NULL,  url_soap_ack  = 'ConfirmationServiceInR12/Service',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=1 and  operation_id=64 
;