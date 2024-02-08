insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 19, 227, 'WsGetAdditionalPropertyByGlobalID', 'WsGetAdditionalPropertyByGlobalID', 'Сервис для запроса информации о Сервисном центре для системы OP_PON_100', 'OUT', 5, 9, NULL, '0', 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;