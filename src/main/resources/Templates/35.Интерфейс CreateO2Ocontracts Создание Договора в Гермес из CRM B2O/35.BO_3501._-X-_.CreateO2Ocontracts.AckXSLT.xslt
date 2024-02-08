<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<ResponseO2Ocontract>
				<from>HRMS</from>
				<to>CRM B2O</to>
				<responseCode>
					<xsl:value-of select="ResultCode"/>
				</responseCode>
				<responseBody>
					<xsl:value-of select="Message"/>
				</responseBody>
				<externalContractId>
					<xsl:value-of select="requestStatusResponse/externalHermesId"/>
				</externalContractId>
				<contractid>
					<xsl:value-of select="requestStatusResponse/numberFromO2O"/>
				</contractid>
			</ResponseO2Ocontract>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<Fault>
				<faultcode>Server problem 35.BO_3601._-X-_.CreateO2Ocontracts<xsl:value-of select="ResultCode"/>
				</faultcode>
				<faultstring>
					<xsl:value-of select="ResultMessage"/>
				</faultstring>
			</Fault>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>