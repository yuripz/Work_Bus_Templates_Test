insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 16, 167, 'CompleteO2OAppointment', 'CompleteO2OAppointment', 'Операция завершения наряда WFM на выполнение работ O2O', 'OUT', 0, 0, NULL, NULL, 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;