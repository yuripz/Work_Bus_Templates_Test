insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 24, 311, 'SendCommentRequest', 'SendCommentRequest_OUT', 'Операция Операция передачи комментария для VLG.DKB2B', 'OUT', 5, 7, NULL, '2', 'AKaravaev',  sysdate
 from artx_proj.Message_Templates;