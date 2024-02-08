insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 50, 505, 'Try_Sleeper', 'Try_Sleeper_SOAP', 'Try_Sleep 	проверка на тайм=оут ( SOAP )  host=http://10.32.245.3:7002', 'OUT', 5, 211, NULL, NULL, 'Podkolzin_JuA',  sysdate
 from artx_proj.Message_Templates;