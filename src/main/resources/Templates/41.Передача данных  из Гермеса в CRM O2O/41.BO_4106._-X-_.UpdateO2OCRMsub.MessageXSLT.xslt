<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<UpdateO2OCRMsub>
			<from>HRMS</from>
			<to>CRM B2O</to>
			<id>
				<xsl:value-of select="/UpdateO2OCRMsub/id"/>
			</id>
			<xsl:for-each select="UpdateO2OCRMsub">
				<number>
					<xsl:value-of select="number"/>
				</number>
				<subProcessId>
					<xsl:value-of select="subProcessId"/>
				</subProcessId>
				<subId>
					<xsl:value-of select="subId"/>
				</subId>
				<stageSubName><xsl:value-of select="stageSubName"/></stageSubName>
				<xsl:copy-of select="workResultList"/>
				<xsl:if test="/UpdateO2OCRMsub/attachmentInfo/attachments[1]/attachment">
					<xsl:copy-of select="attachmentInfo"/>
				</xsl:if>
			</xsl:for-each>
		</UpdateO2OCRMsub>
	</xsl:template>
</xsl:stylesheet>