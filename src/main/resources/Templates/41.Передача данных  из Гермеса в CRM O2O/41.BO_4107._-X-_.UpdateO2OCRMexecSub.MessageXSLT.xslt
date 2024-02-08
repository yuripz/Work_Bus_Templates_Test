<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<UpdateO2OCRMexecSub>
			<from>HRMS</from>
			<to>CRM B2O</to>
			<id>
				<xsl:value-of select="/UpdateO2OCRMexecSub/id"/>
			</id>
			<xsl:for-each select="UpdateO2OCRMexecSub">
				<subProcessId>
					<xsl:value-of select="subProcessId"/>
				</subProcessId>
				<number>
					<xsl:value-of select="number"/>
				</number>
				<subId>
					<xsl:value-of select="subId"/>
				</subId>
				<externalOrderId>
					<xsl:value-of select="externalOrderId"/>
				</externalOrderId>
				<technicalFio>
					<xsl:value-of select="executorFio"/>
				</technicalFio>
				<technicalPhone>
					<xsl:value-of select="executorPhone"/>
				</technicalPhone>
				<technicalEmail>
					<xsl:value-of select="executorEmail"/>
				</technicalEmail>
			</xsl:for-each>
		</UpdateO2OCRMexecSub>
	</xsl:template>
</xsl:stylesheet>