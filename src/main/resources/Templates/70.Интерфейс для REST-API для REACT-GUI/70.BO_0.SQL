insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (70,0,'apiSQLRequest','apiSQLRequest','Интерфейс для REST-API для REACT-GUI','IN',0,'apiSQLRequest','REST',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'apiSQLRequest',  msg_type_own  ='apiSQLRequest',  msg_typedesc  ='Интерфейс для REST-API для REACT-GUI',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'apiSQLRequest',  url_soap_ack  = 'REST',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=70 and  operation_id=0 
;