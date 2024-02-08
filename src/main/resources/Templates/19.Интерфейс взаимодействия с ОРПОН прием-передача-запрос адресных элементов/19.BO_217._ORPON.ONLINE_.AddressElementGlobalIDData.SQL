insert into artx_proj.Message_Templates (
Template_Id, Interface_Id, Operation_Id, Msg_Type, Msg_Type_Own, Template_Name, Template_Dir, Source_Id, Destin_Id, Src_Subcod, Dst_Subcod, Lastmaker, Lastdate)
 select max(Template_Id)+1, 19, 217, 'AddressElementGlobalIDData', 'AddressElementGlobalIDData', 'Online-метод получения адресного элемента по глобальному ИД по команде из Гермес , БО=1505', 'OUT', 5, 109, NULL, '5', 'j.HP-830-G6.Yuripz',  sysdate
 from artx_proj.Message_Templates;