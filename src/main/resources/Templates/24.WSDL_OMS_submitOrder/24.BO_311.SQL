insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (24,311,'SendCommentRequest','SendCommentRequest_OUT','Операция передачи комментария','OUT',0,'SendCommentRequest',NULL,1,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'SendCommentRequest',  msg_type_own  ='SendCommentRequest_OUT',  msg_typedesc  ='Операция передачи комментария',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'SendCommentRequest',  url_soap_ack  = NULL,  max_retry_count = 1,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=24 and  operation_id=311 
;