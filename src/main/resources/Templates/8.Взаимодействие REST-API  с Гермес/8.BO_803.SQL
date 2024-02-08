insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,803,'reLoadR12phtml','reLoadR12phtml','для повторного вызова /LoadR12.phtml когда пришло БО=196, а Confirmation на БО=195 ещё нет','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'reLoadR12phtml',  msg_type_own  ='reLoadR12phtml',  msg_typedesc  ='для повторного вызова /LoadR12.phtml когда пришло БО=196, а Confirmation на БО=195 ещё нет',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=803 
;