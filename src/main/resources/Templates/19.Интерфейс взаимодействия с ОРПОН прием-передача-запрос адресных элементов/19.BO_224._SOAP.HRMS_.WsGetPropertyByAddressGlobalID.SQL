insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 19, 224, 'WsGetPropertyByAddressGlobalID', 'WsGetPropertyByAddressGlobalID', 'Метод запроса из ОРПОН данных по объектам недвижимости HE-4893 для системы SOAP.HRMS', 'OUT', 5, 211, NULL, NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;