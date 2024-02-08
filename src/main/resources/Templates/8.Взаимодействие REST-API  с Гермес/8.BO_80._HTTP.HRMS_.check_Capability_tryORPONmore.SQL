insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 8, 80, 'check_Capability_tryORPONmore', 'check_Capability_tryORPONmore', 'вызов hermes-test.rt.ru/express_ptv/check_connectivity_result/repeat?Id_Adderss=xxxxx', 'OUT', 5, 8, NULL, '1', 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;