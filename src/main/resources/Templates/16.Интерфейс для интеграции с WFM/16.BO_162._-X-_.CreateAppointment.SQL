insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 16, 162, 'CreateAppointment', 'CreateAppointment', 'Создание наряда WFM на выполнение работ с бронированием временного интервала', 'OUT', 0, 0, NULL, NULL, 'Zheludkov_NA',  sysdate
 from artx_proj.Message_Templates;