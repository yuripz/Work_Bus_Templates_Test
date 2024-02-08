insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 28, 285, 'CancelGroupRequest', 'CancelGroupRequest', 'Запрос на отмену заявки УЗ', 'OUT', 5, 19, NULL, NULL, 'Zheludkov_NA',  sysdate
 from artx_proj.Message_Templates;