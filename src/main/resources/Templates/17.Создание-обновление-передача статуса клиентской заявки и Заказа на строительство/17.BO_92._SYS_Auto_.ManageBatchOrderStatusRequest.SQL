insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 17, 92, 'ManageBatchOrderStatusRequest', 'ManageBatchOrderStatusRequest', 'Операция создания/обновления услуг по пакету адресов для клиентской заявки', 'IN', 7, 5, '1', NULL, 'AMur',  sysdate
 from artx_proj.Message_Templates;