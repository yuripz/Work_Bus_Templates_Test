<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<UpdateO2OCRMproblem>
			<from>HRMS</from>
			<to>CRM B2O</to>
			<id><xsl:value-of select="/UpdateO2OCRMproblem/id"/></id>
			<xsl:for-each select="UpdateO2OCRMproblem">
				<number>
					<xsl:value-of select="number"/>
				</number>
				<xsl:if test="subId">
				<subId>
					<xsl:value-of select="subId"/>
				</subId>
				</xsl:if>
				<externalWorkTypeId>
					<xsl:value-of select="externalWorkTypeId"/>
				</externalWorkTypeId>
                                <problemId>
					<xsl:value-of select="problemId"/>
				</problemId>
				<description>
					<xsl:value-of select="description"/>
				</description>
				<comment>
					<xsl:value-of select="comment"/>
				</comment>
				<address>
					<xsl:value-of select="address"/>
				</address>
				<createDate>
					<xsl:value-of select="createDate"/>
				</createDate>
				<technicalFio>
					<xsl:value-of select="technicalFio"/>
				</technicalFio>
				<technicalPhone>
					<xsl:value-of select="technicalPhone"/>
				</technicalPhone>
				<technicalEmail>
					<xsl:value-of select="technicalEmail"/>
				</technicalEmail>
				<xsl:if test="/UpdateO2OCRMproblem/attachmentInfo/attachments[1]/attachment">
					<xsl:copy-of select="attachmentInfo"/>
				</xsl:if>
			</xsl:for-each>
		</UpdateO2OCRMproblem>
	</xsl:template>
</xsl:stylesheet>