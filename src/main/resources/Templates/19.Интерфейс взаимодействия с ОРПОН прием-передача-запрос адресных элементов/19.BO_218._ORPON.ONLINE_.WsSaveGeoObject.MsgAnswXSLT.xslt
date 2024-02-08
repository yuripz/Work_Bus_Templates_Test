<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="SaveGeoObjectResponse">
			<Confirmation>
				<ResultCode>
					<xsl:value-of select="ResponseCode"/>
				</ResultCode>
				<Message>
					<xsl:choose>
						<xsl:when test="ResponseCode = 0">GID получен: <xsl:if test="CreatedObjectGlobalID"> CreatedObjectGlobalID=<xsl:value-of select="CreatedObjectGlobalID"/>
							</xsl:if>
						</xsl:when>
						<xsl:when test="ResponseCode = 10">Получили GID Дубликата: <xsl:value-of select="ResponseMessage"/>
						</xsl:when>
						<xsl:otherwise>сбой на стороне ОРНОН: <xsl:value-of select="ResponseMessage"/>
						</xsl:otherwise>
					</xsl:choose>
				</Message>
				<DetailList>
					<Detail>
						<ResponseCode>
							<xsl:value-of select="ResponseCode"/>
						</ResponseCode>
						<ResponseMessage>
							<xsl:value-of select="ResponseMessage"/>
						</ResponseMessage>
						
							<xsl:if test="CreatedObjectGlobalID">
							<CreatedObjectGlobalID>
								<xsl:value-of select="CreatedObjectGlobalID"/>
							</CreatedObjectGlobalID>	
							</xsl:if>
							<xsl:if test="ResponseCode = 10">
							<DupCreatedObjectGlobalID>
								<xsl:value-of select="ResponseMessage"/>
								</DupCreatedObjectGlobalID>	
							</xsl:if>
						
					</Detail>
				</DetailList>
				<Next>RESOUT</Next>
			</Confirmation>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<Confirmation>
						<ResultCode>
							<xsl:value-of select="ResultCode"/>
						</ResultCode>
						<Message>
							<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
							<xsl:copy-of select="/Fault"/>
							<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
						</Message>
						<Next>RESOUT</Next>
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
						<Next>RESOUT</Next>
					</Confirmation>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>