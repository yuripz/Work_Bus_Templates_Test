insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (50,502,'Scan_Word_Stats','Scan_Word_Stats','JSON приёмник Get-запроса','OUT',0,'/scan_wordstat',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'Scan_Word_Stats',  msg_type_own  ='Scan_Word_Stats',  msg_typedesc  ='JSON приёмник Get-запроса',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = '/scan_wordstat',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=50 and  operation_id=502 
;