insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 401, 'checkAccessCapabilityRequest', 'checkAccessCapabilityRequest', 'Запрос АвтоПТВ-Install Аргус МРФ СЗ (Пул №1)', 'OUT', 5, 13, NULL, '4', 'Kuznetsov_VA',  sysdate
 from artx_proj.Message_Templates;