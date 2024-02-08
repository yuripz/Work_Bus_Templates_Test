insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,81,'check_Capability_errorORPON','check_Capability_errorORPON','Когда ОРПОН адрес не распознал , то  hermes-test.rt.ru/express_ptv/check_connectivity_result/error?Id_Adderss=xxxxx','OUT',0,NULL,NULL,1,20, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'check_Capability_errorORPON',  msg_type_own  ='check_Capability_errorORPON',  msg_typedesc  ='Когда ОРПОН адрес не распознал , то  hermes-test.rt.ru/express_ptv/check_connectivity_result/error?Id_Adderss=xxxxx',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 1,  max_retry_time  = 20,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=81 
;