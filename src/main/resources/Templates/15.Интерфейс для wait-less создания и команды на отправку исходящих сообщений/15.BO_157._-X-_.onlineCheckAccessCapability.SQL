insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 15, 157, 'onlineCheckAccessCapability', 'onlineCheckAccessCapability', 'Ожидание и возврат ответа от сформированного БО-401 checkAccessCapabilityRequest', 'IN', 0, 0, NULL, NULL, 'GLoginov',  sysdate
 from artx_proj.Message_Templates;