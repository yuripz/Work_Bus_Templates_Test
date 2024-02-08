insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (16,0,'WFM_AppointmentService','WFM_AppointmentService','Интерфейс для интеграции с WFM','IN',0,'WFM_AppointmentService',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'WFM_AppointmentService',  msg_type_own  ='WFM_AppointmentService',  msg_typedesc  ='Интерфейс для интеграции с WFM',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'WFM_AppointmentService',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=16 and  operation_id=0 
;