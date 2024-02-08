insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 72, 7201, 'CreateProjectSIP', 'CreateProjectSIP', 'Операция создания карточки проекта СИП из Гермес', 'OUT', 0, 0, NULL, NULL, 'Vasiliev.Vyacheslav',  sysdate
 from artx_proj.Message_Templates;