insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 37, 0, 'Create_O2O_orders_srv', 'Create_O2O_orders_srv', 'Интерфейс CreateO2Oorders  - Создание заявки на строительство O2O в Гермес из CRM B2O', 'IN', 0, 0, NULL, NULL, 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;