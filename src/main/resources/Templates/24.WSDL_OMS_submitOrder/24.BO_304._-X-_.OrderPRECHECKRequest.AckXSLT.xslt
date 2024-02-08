<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<tns:submitOrderResponse xmlns:tns="http://oms.rt.ru/">
				<originator>HRMS</originator>
				<xsl:choose>
					<xsl:when test="PayLoad/originator">
						<receiver>
							<xsl:value-of select="PayLoad/originator"/>
						</receiver>
					</xsl:when>
					<xsl:otherwise>
						<receiver>NRI</receiver>
					</xsl:otherwise>
				</xsl:choose>
				<orderResult>
					<orderResultCode>
						<xsl:value-of select="ResultCode"/>
					</orderResultCode>
					<orderResultText>
						<xsl:value-of select="Message"/>
					</orderResultText>
				</orderResult>
				<xsl:choose>
					<xsl:when test="PayLoad/requestId">
						<requestId>
							<xsl:value-of select="PayLoad/requestId"/>
						</requestId>
					</xsl:when>
					<xsl:otherwise>
						<requestId>000-000-000
					</requestId>
					</xsl:otherwise>
				</xsl:choose>
			</tns:submitOrderResponse>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<Fault>
				<ResultCode>
					<xsl:value-of select="ResultCode"/>
				</ResultCode>
				<ResultMessage>
					<xsl:value-of select="Message"/>
				</ResultMessage>
			</Fault>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>