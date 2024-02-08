<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="getLineLimitationResponse">
			<Confirmation>
				<ResultCode>
					<xsl:value-of select="errorCode"/>
				</ResultCode>
				<Message>
					<xsl:choose>
						<xsl:when test="errorCode=0">СЛТУ прислало </xsl:when>
						<xsl:otherwise>произошёл сбой при запросе NRI:<xsl:value-of select="errorInfo"/>
						</xsl:otherwise>
					</xsl:choose>
				</Message>
				<DetailList>
					<url>
						<xsl:value-of select="url"/>
					</url>
				</DetailList>
				<xsl:choose>
					<xsl:when test="errorCode=0">
						<Next>DELOUT</Next>
					</xsl:when>
					<xsl:otherwise>
						<Next>ATTOUT</Next>
					</xsl:otherwise>
				</xsl:choose>
			</Confirmation>
		</xsl:for-each>
		<!--  orderResult -->
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<Confirmation>
						<ResultCode>
							<xsl:value-of select="ResultCode"/>
						</ResultCode>
						<Message>
							<xsl:value-of select="Message"/>
						</Message>
						<DetailList>
							<ResultCode>20206</ResultCode>
							<Message>системный сбой</Message>
						</DetailList>
						<Next>ERROUT</Next>
					</Confirmation>
				</xsl:when>
				<xsl:otherwise>
					<Confirmation>
						<ResultCode>6666</ResultCode>
						<Message>
							<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
							<xsl:copy-of select="/Fault"/>
							<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
						</Message>
						<DetailList>
							<ResultCode>20206</ResultCode>
							<Message>системный сбой</Message>
						</DetailList>
						<Next>ERROUT</Next>
					</Confirmation>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>