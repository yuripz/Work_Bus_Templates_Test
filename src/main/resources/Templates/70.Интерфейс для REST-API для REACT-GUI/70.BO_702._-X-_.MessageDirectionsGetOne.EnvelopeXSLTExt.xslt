<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:for-each select="Body">
				<xsl:for-each select="Parametrs">
					<xsl:variable name="Apos">'</xsl:variable>
					<xsl:variable name="TableListFilter">
						<xsl:value-of select="concat(' and ', Pk_FieldName, ' = ', $Apos, Pk_Value , $Apos )"/>
					</xsl:variable>
					<SQLRequest>
						<SQLStatement type="select" snum="1">
							<PSTMT>select * from ( select App_Server, TO_Char(Last_Update_Dt, 'YYYY-MM-DD HH24:MI:SS' ) Last_Update_Dt,Msgdirection_Id, Subsys_Cod, Num_Thread, Base_Thread_Id, Msgdirection_Cod, Msgdirection_Desc, Wsdl_Name, CASE when Type_Connect=3 then 'WS-SOAP' 
 when Type_Connect=4 then 'HTTP-GET-POST'
   when Type_Connect=6 then 'JMS-JSON-XML' 
     when Type_Connect=1 then 'DIRECT-DB' 
 else 'xxx-xxx'    
END Type_Connect_Desc, Type_Connect, Db_User, Db_Pswd , Ext_Upload_Path, Attachment_Dir, Short_Retry_Count, Short_Retry_Interval, Long_Retry_Count, Long_Retry_Interval, Num_Helpers_Thread, List_Lame_Threads from artx_Proj.MESSAGE_DIRECTIONS ) md where 1=1 <xsl:value-of select="$TableListFilter"/>
and ROWNum=1 </PSTMT>
						</SQLStatement>
						<TotalStatement type="select" snum="1">select -1 as mycount from dual</TotalStatement>
					</SQLRequest>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
