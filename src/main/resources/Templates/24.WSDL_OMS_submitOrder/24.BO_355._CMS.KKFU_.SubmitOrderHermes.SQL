insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 24, 355, 'SubmitOrderHermes', 'SubmitOrderHermes', 'Создание заказа в CMS КЦ по КЗ Гермес для системы CMS.KKFU', 'OUT', 5, 7, NULL, '7', 'Grishina_IP',  sysdate
 from artx_proj.Message_Templates;