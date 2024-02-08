insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 29, 293, 'getBarcodeBatch', 'getBarcodeBatch', 'Запрос на получение запаса BAR-кодов из АПД ', 'OUT', 4, 4, '1', '1', 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;