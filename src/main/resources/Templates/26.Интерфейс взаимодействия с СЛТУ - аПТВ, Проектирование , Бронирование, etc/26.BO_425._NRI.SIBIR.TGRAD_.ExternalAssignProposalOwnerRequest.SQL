insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 425, 'ExternalAssignProposalOwnerRequest', 'ExternalAssignProposalOwnerRequest', 'Операция назначения проектировщика на задачу из СЛТУ ( NRI.SIBIR.TGRAD )', 'IN', 14, 5, '5', NULL, 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;