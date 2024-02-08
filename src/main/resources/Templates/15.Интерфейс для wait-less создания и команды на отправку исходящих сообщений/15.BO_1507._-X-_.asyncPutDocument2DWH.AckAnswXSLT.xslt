<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<xsl:choose>
				<xsl:when test="/Confirmation/DetailList/Detail">
					<!--<onlineWsSaveGeoObjectResponse>-->
					<ResultCode>
						<xsl:value-of select="/Confirmation/ResultCode"/>
					</ResultCode>
					<ResultMessage>
						<xsl:value-of select="/Confirmation/Message"/>
					</ResultMessage>
					<xsl:if test="/Confirmation/ResultCode= '0' or /Confirmation/ResultCode= '200'">
						<xsl:copy-of select="DetailList/Detail/CreatedObjectGlobalID"/>
						<Hermes_Addr_Id><xsl:value-of select="DetailList/Detail/Hermes_Addr_Id"/></Hermes_Addr_Id>
					</xsl:if>
					<!--<xsl:copy-of select="DetailList/Detail"/>-->
					<!--</onlineWsSaveGeoObjectResponse>-->
				</xsl:when>
				<xsl:otherwise>
					<!--<Result>-->
					<ResultCode>-1020304</ResultCode>
					<ResultMessage>Пришло пустое сообщение о Запросе на запуск sh-script для сохранение документа в АПД</ResultMessage>
					<!--</Result>-->
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
		<!--  orderResult -->
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<!--<Result>-->
					<ResultCode>
						<xsl:value-of select="ResultCode"/>
					</ResultCode>
					<Text>
						<xsl:value-of select="Message"/>
					</Text>
					<!--</Result>-->
				</xsl:when>
				<xsl:otherwise>
					<!--<Result>-->
					<ResultCode>6666</ResultCode>
					<ResultMessage>
						<xsl:copy-of select="/Fault"/>
					</ResultMessage>
					<!--</Result>-->
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>