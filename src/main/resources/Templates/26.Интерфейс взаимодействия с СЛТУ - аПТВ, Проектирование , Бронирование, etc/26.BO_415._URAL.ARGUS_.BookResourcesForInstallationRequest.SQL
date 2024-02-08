insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 415, 'BookResourcesForInstallationRequest', 'BookResourcesForInstallationRequest', 'Операция  резервирования ресурсов в Аргус-урал (t3 - 10.184.86.29:37204 и t1 - 10.184.86.35:37204)', 'OUT', 5, 14, NULL, '6', 'Kuznetsov_VA',  sysdate
 from artx_proj.Message_Templates;