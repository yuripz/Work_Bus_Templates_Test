insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 426, 'ManualBookResources', 'ManualBookResources', 'Ручное резервирование ресурсов для системы 	NRI.SIBIR.TGRAD', 'OUT', 5, 14, NULL, '5', 'anastasiya.dracheva',  sysdate
 from artx_proj.Message_Templates;