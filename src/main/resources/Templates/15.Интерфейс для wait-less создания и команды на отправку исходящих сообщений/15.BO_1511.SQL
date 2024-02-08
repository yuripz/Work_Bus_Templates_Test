insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1511,'LoadComment4Send','LoadComment4Send','формирование БЩ-312 для нагрузочного тестирования url=/integrationApi/get_comment_request','OUT',0,'get_comment_request',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'LoadComment4Send',  msg_type_own  ='LoadComment4Send',  msg_typedesc  ='формирование БЩ-312 для нагрузочного тестирования url=/integrationApi/get_comment_request',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'get_comment_request',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1511 
;