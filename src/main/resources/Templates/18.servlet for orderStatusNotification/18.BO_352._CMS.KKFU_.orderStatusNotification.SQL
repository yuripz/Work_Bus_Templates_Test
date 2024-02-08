insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 18, 352, 'orderStatusNotification', 'orderStatusNotification', 'получение изменений для системы CMS.KKFU', 'IN', 7, 5, '7', NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;