<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<CreateO2OCRMsub>
			<from>HRMS</from>
			<to>CRM B2O</to>
			<id>
				<xsl:value-of select="/CreateO2OCRMsub/id"/>
			</id>
			<xsl:for-each select="CreateO2OCRMsub">
				<number>
					<xsl:value-of select="number"/>
				</number>
				<numberAddr>
					<xsl:value-of select="numberAddr"/>
				</numberAddr>
				<externalOrderId>
					<xsl:value-of select="externalOrderId"/>
				</externalOrderId>
				<subId>
					<xsl:value-of select="subId"/>
				</subId>
				<subCreateDate>
					<xsl:value-of select="subCreateDate"/>
				</subCreateDate>
				<stageSubName>
					<xsl:value-of select="stageSubName"/>
				</stageSubName>
				<xsl:copy-of select="workResultList"/>
			</xsl:for-each>
		</CreateO2OCRMsub>
	</xsl:template>
</xsl:stylesheet>