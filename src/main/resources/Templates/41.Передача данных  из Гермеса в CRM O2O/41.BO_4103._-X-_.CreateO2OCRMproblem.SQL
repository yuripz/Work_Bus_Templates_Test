insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 41, 4103, 'CreateO2OCRMproblem', 'CreateO2OCRMproblem', 'Создание Проблемы в процессе строительства O2O из Гермес в CRM B2O', 'OUT', 0, 0, NULL, NULL, 'MalyugaAS',  sysdate
 from artx_proj.Message_Templates;