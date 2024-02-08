insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 24, 301, 'submitOrderRequest', 'submitOrderRequest_in', 'VLG.DKB2B - Клиентская заявка на услуги', 'IN', 7, 5, '2', NULL, 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;