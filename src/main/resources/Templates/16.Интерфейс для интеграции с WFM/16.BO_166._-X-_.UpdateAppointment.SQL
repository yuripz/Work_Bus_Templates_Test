insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 16, 166, 'UpdateAppointment', 'UpdateAppointment ', 'Операция обновления информации по наряду WFM', 'OUT', 0, 0, NULL, NULL, 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;