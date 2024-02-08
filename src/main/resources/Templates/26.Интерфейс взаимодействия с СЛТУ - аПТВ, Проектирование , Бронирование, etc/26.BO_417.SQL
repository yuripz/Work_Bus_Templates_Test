insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (26,417,'CheckClientActiveServicesRequest','CheckClientActiveServicesRequest','Проверка установленных сервисов по адресу','OUT',2,'?action=http://nri.rt.ru/ProjectProposalSevice/ProjectProposalSevice/CheckClientActiveServices',NULL,3,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'CheckClientActiveServicesRequest',  msg_type_own  ='CheckClientActiveServicesRequest',  msg_typedesc  ='Проверка установленных сервисов по адресу',  msg_direction  ='OUT',  msg_handler = 2,   url_soap_send = '?action=http://nri.rt.ru/ProjectProposalSevice/ProjectProposalSevice/CheckClientActiveServices',  url_soap_ack  = NULL,  max_retry_count = 3,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=26 and  operation_id=417 
;