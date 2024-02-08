<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<projectStatusResponse>
	<originator>HRMS</originator>
	<receiver>SIP</receiver>
	<resultCode><xsl:value-of select="ResultCode"/></resultCode>
	<resultText><xsl:value-of select="Message"/></resultText>
			</projectStatusResponse>
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