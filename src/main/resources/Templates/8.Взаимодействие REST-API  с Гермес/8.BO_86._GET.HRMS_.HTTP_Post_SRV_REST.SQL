insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 8, 86, 'HTTP_Post_SRV_REST', 'HTTP_Post_SRV_REST', 'httpPOST to /HermesSOAPService/GetHttpRequest/HTTP_Get_SRV c REST', 'OUT', 5, 212, NULL, NULL, 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;