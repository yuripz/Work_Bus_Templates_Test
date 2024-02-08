insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 26, 411, 'CreateProjectProposalRequest', 'CreateProjectProposal', 'создание заявки в СЛТУ на подключение клиента со строительством сети для МРФ Волга', 'OUT', 5, 14, NULL, '2', 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;