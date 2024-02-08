<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:variable name="MsgId" select="Header/MsgId"/>
			<xsl:for-each select="Body">
				<xsl:for-each select="Parametrs">
					<xsl:variable name="Apos">'</xsl:variable>
					<xsl:variable name="TableListFilter">
						<xsl:for-each select="RecordFilters">
							<xsl:for-each select="RecordFilter">
								<xsl:value-of select="concat(' ',  'and', ' ') "/>
								<xsl:variable name="TableAddFilter">
									<xsl:choose>
										<xsl:when test="RecordFilterFieldName ='Msgdirection_Cod' ">
											<xsl:value-of select="concat( RecordFilterFieldName, ' LIKE  ', $Apos , RecordFilterFieldValue, '%'  , $Apos )"/>
										</xsl:when>
										<xsl:when test="RecordFilterFieldName ='Msgdirection_Desc' ">
											<xsl:value-of select="concat( RecordFilterFieldName, ' LIKE  ', $Apos , RecordFilterFieldValue, '%'  , $Apos )"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="concat( RecordFilterFieldName, '  =  ', RecordFilterFieldValue) "/>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:variable>
								<xsl:value-of select="$TableAddFilter"/>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:variable>
					<SQLRequest>
						<xsl:variable name="FirstRecord2Fetch" select="FirstRecord2Fetch"/>
						<FirstRecord2Fetch>
							<xsl:value-of select="$FirstRecord2Fetch"/>
						</FirstRecord2Fetch>
						<xsl:variable name="PageSize" select="LastRecord2Fetch - $FirstRecord2Fetch"/>
						<PageSize>
							<xsl:value-of select="$PageSize"/>
						</PageSize>
						<xsl:variable name="FirstRecordNo" select="$FirstRecord2Fetch"/>
						<FirstRecordNo>
							<xsl:value-of select="$FirstRecordNo"/>
						</FirstRecordNo>
						<xsl:variable name="OrderBy" select="OrderBy"/>
						<xsl:variable name="ColumnOrderBy" select="Sort"/>
						<xsl:variable name="TableOrderBy">
							<xsl:value-of select="concat('  ', $ColumnOrderBy, '  ', $OrderBy) "/>
						</xsl:variable>
						<TableOrderBy>
							<xsl:value-of select="$TableOrderBy"/>
						</TableOrderBy>
						<SQLStatement type="select" snum="1">
							<PSTMT>select * from ( select Msgdirection_Cod, App_Server, TO_Char(Last_Update_Dt, 'YYYY-MM-DD HH24:MI:SS' ) Last_Update_Dt,Msgdirection_Id, Subsys_Cod, Num_Thread, Base_Thread_Id, Msgdirection_Desc, Wsdl_Name,
CASE when Type_Connect=3 then 'WS-SOAP' 
when Type_Connect=4 then 'HTTP-GET-POST'
  when Type_Connect=6 then 'JMS-JSON-XML' 
    when Type_Connect=1 then 'DIRECT-DB' 
else 'xxx-xxx'END Type_Connect_Desc, Type_Connect, Db_User, Db_Pswd , Ext_Upload_Path, Attachment_Dir, Short_Retry_Count, Short_Retry_Interval, Long_Retry_Count, Long_Retry_Interval, Num_Helpers_Thread, List_Lame_Threads from artx_Proj.MESSAGE_DIRECTIONS ) md 
where 1=1 <xsl:value-of select="$TableListFilter"/>Order by <xsl:value-of select="$TableOrderBy"/>
OFFSET <xsl:value-of select="$FirstRecordNo"/> ROWS FETCH NEXT <xsl:value-of select="$PageSize"/> ROWS only</PSTMT>
						</SQLStatement>
						<TotalStatement type="select" snum="1">select count(*) from artx_Proj.Message_DIRECTIONS where 1=1 <xsl:value-of select="$TableListFilter"/>
						</TotalStatement>
					</SQLRequest>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
