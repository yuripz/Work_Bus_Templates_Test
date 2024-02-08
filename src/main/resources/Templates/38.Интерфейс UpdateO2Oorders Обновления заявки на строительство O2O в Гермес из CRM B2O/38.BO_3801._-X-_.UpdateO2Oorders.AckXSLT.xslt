<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<ResponseO2Oorder>
				<from>HRMS</from>
				<to>CRM B2O</to>
				<responseCode>
					<xsl:value-of select="ResultCode"/>
				</responseCode>
				<responseBody>
					<xsl:value-of select="Message"/>
				</responseBody>
				<externalOrderId>
					<xsl:value-of select="requestStatusResponse/externalHermesId"/>
				</externalOrderId>
				<number>
					<xsl:value-of select="requestStatusResponse/numberFromO2O"/>
				</number>
			</ResponseO2Oorder>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<Fault>
				<faultcode>Server problem 38.BO-3801.UpdateO2Oorders<xsl:value-of select="ResultCode"/>
				</faultcode>
				<faultstring>
					<xsl:value-of select="ResultMessage"/>
				</faultstring>
			</Fault>
		</xsl:for-each>
 </xsl:template>
</xsl:stylesheet>