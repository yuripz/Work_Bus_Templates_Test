insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 31, 3101, 'Reset_User_Passw', 'Reset_User_Passw', 'Обработка Reset_User_Passw', 'IN', 0, 0, NULL, NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;