insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 17, 96, 'ManageCRMTaskStatusUpdateRequest', 'ManageCRMTaskStatusUpdateRequest', 'Обновление статуса клиентской заявки для COM.B2B HE-5082-HE-4858_HE-4635_HE-4438_HE-4600_HE-4626 HE-7365', 'OUT', 5, 7, NULL, '99', 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;