insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (27,2702,'Telegram_sendMessage','Telegram_sendMessage','отправить сообщение в Telegram канал, HTTP GET BOT API','OUT',0,'sendMessage',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Telegram_sendMessage',  msg_type_own  ='Telegram_sendMessage',  msg_typedesc  ='отправить сообщение в Telegram канал, HTTP GET BOT API',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'sendMessage',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=27 and  operation_id=2702 
;