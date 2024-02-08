insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (26,0,'NRIProjectRequest','NRIProjectRequest','Интерфейс взаимодействия с СЛТУ - аПТВ, Проектирование , Бронирование, etc','IN, OUT',0,'NRICompleteNotification',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'NRIProjectRequest',  msg_type_own  ='NRIProjectRequest',  msg_typedesc  ='Интерфейс взаимодействия с СЛТУ - аПТВ, Проектирование , Бронирование, etc',  msg_direction  ='IN, OUT',  msg_handler = 0,   url_soap_send = 'NRICompleteNotification',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=26 and  operation_id=0 
;