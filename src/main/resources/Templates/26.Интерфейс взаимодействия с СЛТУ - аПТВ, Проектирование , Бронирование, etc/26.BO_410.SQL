insert into artx_proj.MESSAGE_TYPES (
  interface_id   ,  operation_id  ,  msg_type    ,  msg_type_own  ,  msg_typedesc  ,  msg_direction  ,  msg_handler   ,  url_soap_send  ,  url_soap_ack    ,  max_retry_count ,  max_retry_time  ,  last_update_dt ) 
values (26,410,'AssignProposalOwnerRequest','AssignProposalOwnerRequest','Назначить  исполнителя по проекту в СЛТУ','OUT',12,'?action=http://nri.rt.ru/ProjectProposalSevice/ProjectProposalSevice/AssignProposalOwner',NULL,2,0, sysdate ) 
;
update artx_proj.MESSAGE_TYPES set
  msg_type  = 'AssignProposalOwnerRequest',  msg_type_own  ='AssignProposalOwnerRequest',  msg_typedesc  ='Назначить  исполнителя по проекту в СЛТУ',  msg_direction  ='OUT',  msg_handler = 12,   url_soap_send = '?action=http://nri.rt.ru/ProjectProposalSevice/ProjectProposalSevice/AssignProposalOwner',  url_soap_ack  = NULL,  max_retry_count = 2,  max_retry_time  = 0,  last_update_dt =sysdate
  where   interface_id=26 and  operation_id=410 
;