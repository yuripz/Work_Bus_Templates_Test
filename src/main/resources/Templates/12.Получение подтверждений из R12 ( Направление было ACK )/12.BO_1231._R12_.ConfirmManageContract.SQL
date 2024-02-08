insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 12, 1231, 'ConfirmManageContract', 'ConfirmManageContract', 'Отправка подтверждений для Корректировка рамочного договора', 'OUT', 5, 1, NULL, NULL, 'Y.P.',  sysdate
 from artx_proj.Message_Templates;