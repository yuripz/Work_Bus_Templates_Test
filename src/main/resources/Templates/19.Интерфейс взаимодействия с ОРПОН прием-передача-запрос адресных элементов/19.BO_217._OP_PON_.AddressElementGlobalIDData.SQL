insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 19, 217, 'AddressElementGlobalIDData', 'AddressElementGlobalIDData', 'Метод получения адресного элемента по глобальному ИД', 'OUT', 5, 9, NULL, '1', 'Grishina_IP',  sysdate
 from artx_proj.Message_Templates;