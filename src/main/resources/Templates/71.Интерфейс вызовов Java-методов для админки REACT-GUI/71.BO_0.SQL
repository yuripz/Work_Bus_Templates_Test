insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (71,0,'apiCustomJavaRequest','apiCustomJavaRequest','Интерфейс вызовов Java-методов для админки REACT-GUI','IN',0,'apiCustomJavaRequest','REST-XML',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'apiCustomJavaRequest',  msg_type_own  ='apiCustomJavaRequest',  msg_typedesc  ='Интерфейс вызовов Java-методов для админки REACT-GUI',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'apiCustomJavaRequest',  url_soap_ack  = 'REST-XML',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=71 and  operation_id=0 
;