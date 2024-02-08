insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 40, 0, 'UpdateO2Osub_srv', 'UpdateO2Osub_srv', 'Интерфейс Нотификация о статусе подзаявки Подрядчик O2O, ХС O2O, ГПХ O2O из CRM B2O в Гермес', 'IN', 0, 0, NULL, NULL, 'Grishina_IP',  sysdate
 from artx_proj.Message_Templates;