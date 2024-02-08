<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<submitProjectSIPRequest>
			<originator>HRMS</originator>
			<receiver>SIP</receiver>
			<mode>SYNC</mode>
			<requestId>
				<xsl:value-of select="/CancelProjectSIP/QueueId"/>
			</requestId>
			<xsl:for-each select="CancelProjectSIP">
				<project>
					<projectId>
						<xsl:value-of select="/CancelProjectSIP/projectId"/>
					</projectId>
					<projectSIPId><xsl:value-of select="/CancelProjectSIP/projectSIPId"/></projectSIPId>
					<projectURL>
						<xsl:value-of select="/CancelProjectSIP/projectURL"/>
					</projectURL>
					<projectAction>CANCELINVEST</projectAction>
				</project>
			</xsl:for-each>
		</submitProjectSIPRequest>
	</xsl:template>
</xsl:stylesheet>