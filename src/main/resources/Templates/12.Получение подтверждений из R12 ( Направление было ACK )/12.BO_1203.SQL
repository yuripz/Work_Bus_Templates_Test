insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (12,1203,'ConfirmManageVendorDic','ConfirmManageVendorDic','Отправка подтверждений для Справочника - контрагенты ','OUT',0,'ConfirmationServiceInR12/Service',NULL,0,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'ConfirmManageVendorDic',  msg_type_own  ='ConfirmManageVendorDic',  msg_typedesc  ='Отправка подтверждений для Справочника - контрагенты ',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = 'ConfirmationServiceInR12/Service',  url_soap_ack  = NULL,  max_retry_count = 0,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=12 and  operation_id=1203 
;