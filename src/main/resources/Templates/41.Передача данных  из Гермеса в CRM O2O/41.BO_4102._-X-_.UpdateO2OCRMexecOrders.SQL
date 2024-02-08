insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 41, 4102, 'UpdateO2OCRMexecOrders', 'UpdateO2OCRMexecOrders', 'Нотификация о назначении исполнителя по заявке из Гермес в CRM B2O', 'OUT', 0, 0, NULL, NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;