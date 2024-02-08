insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (9,70,'ManageNaturalIndexesDicRequest','ManageNaturalIndexesDicRequest','Справочник «Натуральные показатели»','IN',1,'ManageNaturalIndexesDicRequest','ConfirmationServiceInR12/Service',10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ManageNaturalIndexesDicRequest',  msg_type_own  ='ManageNaturalIndexesDicRequest',  msg_typedesc  ='Справочник «Натуральные показатели»',  msg_direction  ='IN',  msg_handler = 1,   url_soap_send = 'ManageNaturalIndexesDicRequest',  url_soap_ack  = 'ConfirmationServiceInR12/Service',  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=9 and  operation_id=70 
;