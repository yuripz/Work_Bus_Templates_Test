insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 24, 2410, 'get4_SLTU_WebNRICard', 'get_4_SLTU_WebNRICard', 'Запрос к СЛТУ получение URL для карточки под WebNRI для системы SZ.ARGUS', 'OUT', 5, 14, NULL, '4', 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;