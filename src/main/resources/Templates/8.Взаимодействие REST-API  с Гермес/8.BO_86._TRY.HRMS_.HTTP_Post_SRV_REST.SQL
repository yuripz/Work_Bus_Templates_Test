insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 8, 86, 'HTTP_Post_SRV_REST', 'HTTP_Post_SRV_REST', 'Операция httpPOST to /HermesSOAPService/GetHttpRequest/HTTP_Get_SRV c REST пост-обработкой для TRY.HRMS', 'OUT', 5, 214, NULL, NULL, 'sysBusMaster',  sysdate
 from artx_proj.Message_Templates;