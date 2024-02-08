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
							<PSTMT>select ROWID, 
  interface_id   ,
  operation_id  ,
  msg_type    ,
  msg_type_own  ,
  msg_typedesc  ,
  msg_direction  ,
  msg_handler   ,
  url_soap_send  ,
  url_soap_ack    ,
  max_retry_count ,
  max_retry_time  ,
  TO_Char(last_update_dt, 'YYYY-MM-DD HH24:MI:SS' ) as last_update_dt
from artx_Proj.Message_Types 
where 1=1 <xsl:value-of select="$TableListFilter"/> and ROWNum=1
							</PSTMT>
						</SQLStatement>
						<TotalStatement type="select" snum="1">select -1 as mycount from dual</TotalStatement>
					</SQLRequest>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
