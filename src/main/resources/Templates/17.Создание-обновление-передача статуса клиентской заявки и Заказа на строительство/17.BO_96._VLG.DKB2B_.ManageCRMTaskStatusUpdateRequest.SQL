insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 17, 96, 'ManageCRMTaskStatusUpdateRequest', 'ManageCRMTaskStatusUpdateRequest', 'БО-96 по формату как для FSOM/COM.B2B и так же как для CRM B2B для Деловой клиент Волга', 'OUT', 5, 7, NULL, '2', 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;