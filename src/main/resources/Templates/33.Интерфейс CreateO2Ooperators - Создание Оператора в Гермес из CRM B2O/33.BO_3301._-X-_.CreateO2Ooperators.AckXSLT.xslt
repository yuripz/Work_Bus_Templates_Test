<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<ResponseO2Ooperator>
				<from>HRMS</from>
				<to>CRM B2O</to>
				<responseCode>
					<xsl:value-of select="ResultCode"/>
				</responseCode>
				<responseBody>
					<xsl:value-of select="Message"/>
				</responseBody>
				<externalOperatorId>
					<xsl:value-of select="requestStatusResponse/externalHermesId"/>
				</externalOperatorId>
				<number>
					<xsl:value-of select="requestStatusResponse/numberFromO2O"/>
				</number>
			</ResponseO2Ooperator>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<Fault>
				<faultcode>Server problem 33.BO-3301.CreateO2Ooperators<xsl:value-of select="ResultCode"/>
				</faultcode>
				<faultstring>
					<xsl:value-of select="ResultMessage"/>
				</faultstring>
			</Fault>
		</xsl:for-each>
 </xsl:template>
</xsl:stylesheet>