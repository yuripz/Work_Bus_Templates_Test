insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 414, 'RestartProjectRequest', 'RestartProjectRequest', 'Операция событие на внесение корректировки  в ранее созданный проект СЛТУ для VLG.ARGUS', 'OUT', 5, 14, NULL, '2', 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;