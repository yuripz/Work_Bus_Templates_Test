insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (9,0,'ManageNaturalIndexesDic','ManageNaturalIndexesDic','Интерфейс Справочник Натуральные показатели','IN',0,'ManageNaturalIndexesDicRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ManageNaturalIndexesDic',  msg_type_own  ='ManageNaturalIndexesDic',  msg_typedesc  ='Интерфейс Справочник Натуральные показатели',  msg_direction  ='IN',  msg_handler = 0,   url_soap_send = 'ManageNaturalIndexesDicRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=9 and  operation_id=0 
;