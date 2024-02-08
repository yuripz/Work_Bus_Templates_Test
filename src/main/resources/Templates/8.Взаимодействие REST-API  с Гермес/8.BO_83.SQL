insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (8,83,'check_Capability_ParsedORPON','check_Capability_ParsedORPON','по адресу был получен GID из ОРПОН, его необходимо check_connectivity_result/parsed?Id_Address=','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'check_Capability_ParsedORPON',  msg_type_own  ='check_Capability_ParsedORPON',  msg_typedesc  ='по адресу был получен GID из ОРПОН, его необходимо check_connectivity_result/parsed?Id_Address=',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=8 and  operation_id=83 
;