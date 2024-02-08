<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<Confirmation>
			<ResultCode>0</ResultCode>
			<Message>Ответ от канала <xsl:value-of select="/MsgData/result/chat/title"/>
			</Message>
			<DetailList>
				<xsl:copy-of select="MsgData"/>
			</DetailList>
			<Next>DELOUT</Next>
		</Confirmation>
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<Result>
						<Cod>
							<xsl:value-of select="ResultCode"/>
						</Cod>
						<Text>
							<xsl:value-of select="Message"/>
						</Text>
						<Next>DELOUT</Next>
					</Result>
				</xsl:when>
				<xsl:otherwise>
					<Result>
						<Cod>66066</Cod>
						<Text><xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text><xsl:copy-of select="/Fault"/><xsl:text disable-output-escaping="yes">]]&gt;</xsl:text></Text>
						<Next>ERROUT</Next>
					</Result>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>