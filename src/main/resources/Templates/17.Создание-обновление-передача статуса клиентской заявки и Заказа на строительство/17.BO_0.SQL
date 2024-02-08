insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (17,0,'HRMSCRMOrderStatusService','HRMSCRMOrderStatusService','Создание-обновление-передача статуса клиентской заявки и Заказа на строительство','IN',4,'CRMOrderRequest',NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'HRMSCRMOrderStatusService',  msg_type_own  ='HRMSCRMOrderStatusService',  msg_typedesc  ='Создание-обновление-передача статуса клиентской заявки и Заказа на строительство',  msg_direction  ='IN',  msg_handler = 4,   url_soap_send = 'CRMOrderRequest',  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=17 and  operation_id=0 
;