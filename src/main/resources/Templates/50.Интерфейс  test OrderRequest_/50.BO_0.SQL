insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (50,0,'OrderRequest_MsgSrv','OrderRequest_MsgSrv','Интерфейс  test OrderRequest_','IN',0,'doOrderRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'OrderRequest_MsgSrv',  msg_type_own  ='OrderRequest_MsgSrv',  msg_typedesc  ='Интерфейс  test OrderRequest_',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'doOrderRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=50 and  operation_id=0 
;