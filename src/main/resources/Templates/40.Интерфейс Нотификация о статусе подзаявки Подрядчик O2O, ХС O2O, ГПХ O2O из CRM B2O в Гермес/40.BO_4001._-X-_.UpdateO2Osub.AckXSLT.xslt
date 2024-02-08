<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<ResponseO2Osub>
				<from>HRMS</from>
				<to>CRM B2O</to>
				<responseCode>
					<xsl:value-of select="ResultCode"/>
				</responseCode>
				<responseBody>
					<xsl:value-of select="Message"/>
				</responseBody>
				<subId>
					<xsl:value-of select="requestStatusResponse/externalHermesId"/>
				</subId>
				<subProcessId>
					<xsl:value-of select="requestStatusResponse/numberFromO2O"/>
				</subProcessId>
			</ResponseO2Osub>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<Fault>
				<faultcode>Server problem 40.BO-4001.UpdateO2Osub<xsl:value-of select="ResultCode"/>
				</faultcode>
				<faultstring>
					<xsl:value-of select="ResultMessage"/>
				</faultstring>
			</Fault>
		</xsl:for-each>
 </xsl:template>
</xsl:stylesheet>