insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (72,7201,'CreateProjectSIP','CreateProjectSIP','Операция создания карточки проекта СИП из Гермес','OUT',0,'creatprojectsip',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'CreateProjectSIP',  msg_type_own  ='CreateProjectSIP',  msg_typedesc  ='Операция создания карточки проекта СИП из Гермес',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'creatprojectsip',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=72 and  operation_id=7201 
;