insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 24, 2414, 'getLine_Limitation_Request', 'getLine_Limitation_Request', 'Запрос к СЛТУ получение порта устройства доступа и его характеристик ', 'OUT', 5, 14, NULL, '5', 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;