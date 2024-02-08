insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 51, 514, 'HTTP_Put_OUT', 'HTTP_Put_OUT', 'Для исходящего - функционального тестирования HTTP-Put ', 'OUT', 0, 0, NULL, NULL, 'AMur',  sysdate
 from artx_proj.Message_Templates;