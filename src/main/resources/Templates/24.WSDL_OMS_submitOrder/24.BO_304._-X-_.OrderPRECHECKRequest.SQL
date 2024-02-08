insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 24, 304, 'OrderPRECHECKRequest', 'OrderPRECHECKRequest', 'Запрос на АПТВ-ИНСТАЛЛЯЦИЯ от внешних систем к СЛТУ', 'IN', 0, 0, NULL, NULL, 'Grishina_IP',  sysdate
 from artx_proj.Message_Templates;