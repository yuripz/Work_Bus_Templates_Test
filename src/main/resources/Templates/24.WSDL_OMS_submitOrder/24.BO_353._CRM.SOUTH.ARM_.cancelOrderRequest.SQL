insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 24, 353, 'cancelOrderRequest', 'cancelOrderRequest_out', 'Операция Запрос из Гермес на cancel услуг для CRM.SOUTH.ARM', 'OUT', 5, 7, NULL, '81', 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;