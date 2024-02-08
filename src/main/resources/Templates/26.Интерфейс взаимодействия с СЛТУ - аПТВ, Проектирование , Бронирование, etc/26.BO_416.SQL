insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (26,416,'CancelResourcesBookingRequest','CancelResourcesBookingRequest','Отмена резервирования ( брони в СЛТУ )','OUT',3,NULL,NULL,2,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'CancelResourcesBookingRequest',  msg_type_own  ='CancelResourcesBookingRequest',  msg_typedesc  ='Отмена резервирования ( брони в СЛТУ )',  msg_direction  ='OUT',  msg_handler = 3,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 2,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=26 and  operation_id=416 
;