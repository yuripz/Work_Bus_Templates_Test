insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 16, 164, 'CancelAppointment', 'CancelAppointment', 'Операция отмены наряда WFM для системы URAL.WFMARGUS', 'OUT', 5, 20, NULL, '6', 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;