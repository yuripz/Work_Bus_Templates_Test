insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 16, 168, 'CreateO2OAppointment', 'CreateO2OAppointment', 'Операция создания O2O наряда WFM на выполнение работ для системы CENTR.WFMTGO2O', 'OUT', 5, 21, NULL, '7', 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;