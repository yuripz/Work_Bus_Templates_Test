insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 41, 4105, 'CreateO2OCRMsub', 'CreateO2OCRMsub', 'Создание подзаявки Подрядчик O2O, ХС O2O, ГПХ O2O из Гермес в CRM B2O', 'OUT', 0, 0, NULL, NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;