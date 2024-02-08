insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 15, 1513, 'LoadGetDate4OrderRequest', 'LoadGetDate4OrderRequest', 'формирование БО-223 для нагрузочного тестирования Получения контрольных дат по заказу из CMS', 'OUT', 0, 0, NULL, NULL, 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;