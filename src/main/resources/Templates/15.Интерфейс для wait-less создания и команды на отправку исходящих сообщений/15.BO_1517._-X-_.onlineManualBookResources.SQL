insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 15, 1517, 'onlineManualBookResources', 'onlineManualBookResources', 'запрос от Гермес на формирование БО-426 для ManualBookResources, возвращающий исходящее Queue_Id ', 'IN', 0, 0, NULL, NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;