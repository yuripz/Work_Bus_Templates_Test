insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 16, 169, 'UpdateO2OAppointment', 'UpdateO2OAppointment ', 'Операция обновления информации по O2O наряду WFM', 'OUT', 0, 0, NULL, NULL, 'Grishina_IP',  sysdate
 from artx_proj.Message_Templates;