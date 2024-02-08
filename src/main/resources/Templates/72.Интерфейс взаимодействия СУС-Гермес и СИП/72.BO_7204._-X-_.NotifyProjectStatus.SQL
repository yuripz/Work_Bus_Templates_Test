insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 72, 7204, 'NotifyProjectStatus', 'NotifyProjectStatus', 'Нотификация по статусу выделения нивестиций для Гермес из СИП ', 'IN', 0, 0, NULL, NULL, 'dbilling',  sysdate
 from artx_proj.Message_Templates;