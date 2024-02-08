insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (15,1502,'ext_Reference_Point_Req','ext_Reference_Point_Req','Запрос на создание-обновление опорных точкек в Гермес при получении их из СЛТУ','OUT',0,'ErrorTransfer/Service',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ext_Reference_Point_Req',  msg_type_own  ='ext_Reference_Point_Req',  msg_typedesc  ='Запрос на создание-обновление опорных точкек в Гермес при получении их из СЛТУ',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'ErrorTransfer/Service',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=15 and  operation_id=1502 
;