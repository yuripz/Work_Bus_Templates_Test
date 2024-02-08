<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<SQLRequest>
			<SQLStatement type="refcursor" snum="1">
				<PSTMT>{ ? = call Artx_Proj.x_msbus_CRUD_Api.update_MessageQueue_Record( 
							    ?,
							    ?,
							    ? )  }</PSTMT>
				<Param pnum="1" dir="out"/>
				<Param pnum="2">
					<xsl:value-of select="/Envelope/Header/MsgId"/>
				</Param>
				<Param pnum="3">
					<xsl:value-of select="/Envelope/Body/Parametrs/QueryString/Pk_Value"/>
				</Param>
				<Param pnum="4">
<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>				
				<xsl:copy-of select="/Envelope/Body/Parametrs/Record"/>
<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text></Param>
			</SQLStatement>
		</SQLRequest>
	</xsl:template>
</xsl:stylesheet>
