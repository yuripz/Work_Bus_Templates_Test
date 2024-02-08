insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 1, 71, 'ManageNotFrameContractDicRequest', 'ManageNotFrameContractDicRequest', 'Справочник Расходных не рамочных договоров и ДС ОФУ', 'IN', 1, 5, NULL, NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;