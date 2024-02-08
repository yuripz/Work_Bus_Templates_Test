<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<addressElementGlobalIDResponse>
				<xsl:choose>
					<xsl:when test="/Confirmation/DetailList">
						<ResultCode>
							<xsl:value-of select="/Confirmation/ResultCode"/>
						</ResultCode>
						<Message>
							<xsl:if test="/Confirmation/ResultCode!= '0' and /Confirmation/Message = '' ">Ошибка на стороне ОРПОН, код ошибки <xsl:value-of select="/Confirmation/ResultCode"/>
							</xsl:if>
							<xsl:value-of select="/Confirmation/Message"/>
						</Message>
						<Hermes_Addr_Id>
							<xsl:value-of select="/Confirmation/DetailList/Hermes_Addr_Id"/>
						</Hermes_Addr_Id>
						<GlobalID>
							<xsl:value-of select="/Confirmation/DetailList/AddressElementGroup/House/GlobalID"/>
						</GlobalID>
					</xsl:when>
					<xsl:otherwise>
						<ResultCode>-1020304</ResultCode>
						<Message>Пришло пустое сообщение об о получении адреса по GID из ОРПОН</Message>
					</xsl:otherwise>
				</xsl:choose>
			</addressElementGlobalIDResponse>
		</xsl:for-each>
		<!--  orderResult -->
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
					</Result>
				</xsl:when>
				<xsl:otherwise>
					<Result>
						<Cod>6666</Cod>
						<Text>
							<xsl:copy-of select="/Fault"/>
						</Text>
					</Result>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
