insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 411, 'CreateProjectProposalRequest', 'CreateProjectProposal', 'Заявка в СЛТУ-АРГУС на подключение клиента со строительством сети SZ.ARGUS (на test2)', 'OUT', 5, 14, NULL, '4', 'GLoginov',  sysdate
 from artx_proj.Message_Templates;