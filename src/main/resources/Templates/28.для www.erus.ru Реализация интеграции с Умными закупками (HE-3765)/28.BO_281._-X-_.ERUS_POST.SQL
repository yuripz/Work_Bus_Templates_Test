insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 28, 281, 'ERUS_POST', 'ERUS_POST', 'Инициация вызова HTTP-POST метод REST-API Гермес', 'OUT', 0, 0, NULL, NULL, 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;