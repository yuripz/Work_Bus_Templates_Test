insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 8, 807, 'LoadSLTUaSync', 'LoadSLTUaSync', 'при получении гиганта-ответа из СЛТУ вызов СУС для обработки через cron POSTOUT', 'OUT', 0, 0, NULL, NULL, 'Y.P.',  sysdate
 from artx_proj.Message_Templates;