insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 19, 217, 'AddressElementGlobalIDData', 'AddressElementGlobalIDData', 'Операция Метод получения адресного элемента по глобальному ИД для ORPON.LOAD', 'OUT', 5, 109, NULL, '3', 'copy_From>HRMS,OP_PON_100',  sysdate
 from artx_proj.Message_Templates;