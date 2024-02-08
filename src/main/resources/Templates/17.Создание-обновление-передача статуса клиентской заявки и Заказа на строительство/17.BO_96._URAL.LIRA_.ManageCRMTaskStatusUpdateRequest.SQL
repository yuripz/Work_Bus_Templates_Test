insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 17, 96, 'ManageCRMTaskStatusUpdateRequest', 'ManageCRMTaskStatusUpdateRequest', 'Обновление статуса клиентской заявки для Лира МРФ Урал URAL.LIRA', 'OUT', 5, 7, NULL, '6', 'Grishina_IP',  sysdate
 from artx_proj.Message_Templates;