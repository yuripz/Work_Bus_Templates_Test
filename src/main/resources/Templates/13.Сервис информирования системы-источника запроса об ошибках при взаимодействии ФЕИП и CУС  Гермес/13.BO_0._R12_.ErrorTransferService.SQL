insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 13, 0, 'ErrorTransferService', 'ErrorTransferService', 'Сервис информирования системы-источника запроса об ошибках', 'IN', 1, 5, NULL, NULL, 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;