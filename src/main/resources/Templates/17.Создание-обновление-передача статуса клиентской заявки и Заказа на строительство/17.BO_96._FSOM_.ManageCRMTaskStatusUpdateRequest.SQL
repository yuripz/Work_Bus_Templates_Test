insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 17, 96, 'ManageCRMTaskStatusUpdateRequest', 'ManageCRMTaskStatusUpdateRequest', 'Обновление статуса клиентской заявки для FSOM было 10.28.97.67:8080 стало 10.143.243.165:22022', 'OUT', 5, 15, NULL, '0', 'anastasiya.dracheva',  sysdate
 from artx_proj.Message_Templates;