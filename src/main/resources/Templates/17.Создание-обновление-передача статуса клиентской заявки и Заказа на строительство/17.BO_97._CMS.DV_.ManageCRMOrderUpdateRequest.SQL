insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 17, 97, 'ManageCRMOrderUpdateRequest', 'ManageCRMOrderUpdateRequest', 'Операция Обновление статуса Заказа на строительство из СУС в CRM для CMS.DV', 'OUT', 5, 7, NULL, '3', 'copy_From>HRMS,URAL.CRMB2B',  sysdate
 from artx_proj.Message_Templates;