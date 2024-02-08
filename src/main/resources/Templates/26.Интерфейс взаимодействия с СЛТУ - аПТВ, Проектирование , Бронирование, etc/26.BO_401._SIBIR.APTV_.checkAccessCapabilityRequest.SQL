insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 401, 'checkAccessCapabilityRequest', 'checkAccessCapabilityRequest', 'Проверка ТВ в Технорград - СИБТРЬ ! Test 10.143.80.147 (Был ПредПрод 10.143.75.83) [FTR 10.143.80.149]', 'OUT', 5, 18, NULL, '5', 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;