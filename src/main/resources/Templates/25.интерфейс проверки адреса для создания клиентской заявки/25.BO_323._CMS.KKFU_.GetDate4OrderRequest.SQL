insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 25, 323, 'GetDate4OrderRequest', 'GetDate4OrderRequest', 'Операция получения контрольных дат по заказу из CMS', 'IN', 7, 5, '7', NULL, 'GLoginov',  sysdate
 from artx_proj.Message_Templates;