insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (29,294,'B2B_Invest_Abn_ORPON','B2B_Invest_Abn_ORPON','Постмониторинг через GID ОР ПОН приём данных в EDW_EXPORT.B2B_INVEST_ABN_ORPON','OUT',0,NULL,NULL,10,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'B2B_Invest_Abn_ORPON',  msg_type_own  ='B2B_Invest_Abn_ORPON',  msg_typedesc  ='Постмониторинг через GID ОР ПОН приём данных в EDW_EXPORT.B2B_INVEST_ABN_ORPON',  msg_direction  ='OUT',  msg_handler = 0,   url_soap_send = NULL,  url_soap_ack  = NULL,  max_retry_count = 10,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=29 and  operation_id=294 
;