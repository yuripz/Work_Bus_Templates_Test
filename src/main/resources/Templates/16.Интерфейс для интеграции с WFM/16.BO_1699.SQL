insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (16,1699,'notifyAppointmentFault','notifyAppointmentFault','Для распознования  ошибок маршрутизации при оповещениях со стороны WFM','IN',0,'notifyAppointmentRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'notifyAppointmentFault',  msg_type_own  ='notifyAppointmentFault',  msg_typedesc  ='Для распознования  ошибок маршрутизации при оповещениях со стороны WFM',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'notifyAppointmentRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=16 and  operation_id=1699 
;