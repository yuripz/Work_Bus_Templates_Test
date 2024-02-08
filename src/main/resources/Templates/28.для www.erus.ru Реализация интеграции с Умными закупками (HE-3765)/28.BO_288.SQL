insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (28,288,'CancelGroupAct','CancelGroupAct','Запрос на отмену группового акта КС-2','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'CancelGroupAct',  msg_type_own  ='CancelGroupAct',  msg_typedesc  ='Запрос на отмену группового акта КС-2',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=28 and  operation_id=288 
;