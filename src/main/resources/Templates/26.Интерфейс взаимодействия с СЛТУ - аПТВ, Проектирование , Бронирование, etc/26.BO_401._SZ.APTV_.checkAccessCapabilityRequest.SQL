insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 401, 'checkAccessCapabilityRequest', 'checkAccessCapabilityRequest', 'Проверка ТВ в АРГУС СЗТ !  SZ.ARGUS (T3 - 10.160.9.174:37204, T1- 10.160.16.126:8080)', 'OUT', 5, 18, NULL, '4', 'Kuznetsov_VA',  sysdate
 from artx_proj.Message_Templates;