<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:for-each select="Header">
				<SQLRequest>
					<SQLStatement type="function" snum="1">
						<PSTMT>{ ? = call artx_proj.x_getsqlconfirm(?,?) }</PSTMT>
						<Param pnum="1" dir="out"/>
						<Param pnum="2">
							<xsl:value-of select="MsgId"/>
						</Param>
						<Param pnum="3">select TO_DATE(f.last_update_dt, 'YYYY-MM-DD HH24:MI:SS' ) last_update_dt,
f.msgdirection_iD, f.subsys_cod, f.Num_Thread, f.Base_Thread_Id, f.msgdirection_cod, f.Msgdirection_Desc, f.Wsdl_Name, f.type_connect, f.db_user, f.db_pswd , f.ATTACHMENT_DIR, f.Short_Retry_Count, f.Short_Retry_Interval, f.Long_Retry_Count, f.Long_Retry_Interval, f.num_helpers_thread, f.list_lame_threads
from ARTX_PROJ.MESSAGE_DIRECTIONS f
where 1=1 and f.msgdirection_iD in ( <xsl:value-of select="/Envelope/Body/Parametrs/Msgdirection_Id"/> )
order by f.Base_Thread_Id , f.Base_Thread_Id + f.num_thread ,
f.msgdirection_iD,  f.subsys_cod,  f.msgdirection_cod
</Param>
						<ResultSet>
							<Result rnum="1" type="number">ResultCode</Result>
						</ResultSet>
					</SQLStatement>
					<Return>
						<Normal>
							<Confirmation>
								<ResultCode>0</ResultCode>
							</Confirmation>
						</Normal>
						<Fault>
  </Fault>
					</Return>
				</SQLRequest>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>