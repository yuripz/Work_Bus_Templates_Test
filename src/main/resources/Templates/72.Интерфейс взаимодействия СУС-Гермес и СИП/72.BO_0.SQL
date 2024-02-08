insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (72,0,'Hermes_2_SIP_srv','Hermes_2_SIP_srv','Интерфейс взаимодействия СУС-Гермес и СИП ','IN',0,'notifyprojectstatus',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Hermes_2_SIP_srv',  msg_type_own  ='Hermes_2_SIP_srv',  msg_typedesc  ='Интерфейс взаимодействия СУС-Гермес и СИП ',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'notifyprojectstatus',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=72 and  operation_id=0 
;