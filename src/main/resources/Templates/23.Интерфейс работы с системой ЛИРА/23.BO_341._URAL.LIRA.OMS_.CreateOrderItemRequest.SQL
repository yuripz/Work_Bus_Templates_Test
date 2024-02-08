insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 23, 341, 'CreateOrderItemRequest', 'CreateOrderItemRequest', 'Создание наряда в ЛИРЕ ( Урал )', 'OUT', 5, 15, NULL, '6', 'Grishina_IP',  sysdate
 from artx_proj.Message_Templates;