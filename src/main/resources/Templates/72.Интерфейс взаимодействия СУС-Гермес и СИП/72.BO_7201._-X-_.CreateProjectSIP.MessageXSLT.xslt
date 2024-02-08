<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<submitProjectSIPRequest>
			<originator>HRMS</originator>
			<receiver>SIP</receiver>
			<mode>SYNC</mode>
			<requestId>
				<xsl:value-of select="/CreateProjectSIP/QueueId"/>
			</requestId>
			<xsl:for-each select="CreateProjectSIP">
				<project>
					<projectId>
						<xsl:value-of select="/CreateProjectSIP/projectId"/>
					</projectId>
					<projectSIPId/>
					<projectURL>
						<xsl:value-of select="/CreateProjectSIP/projectURL"/>
					</projectURL>
					<projectAction>CREATEINVEST</projectAction>
					<xsl:copy-of select="/CreateProjectSIP/projectIP"/>
					<projectParties>
						<xsl:for-each select="projectParties">
							<xsl:for-each select="projectParty">
								<projectParty>
									<partyRole>
										<xsl:value-of select="partyRole"/>
									</partyRole>
									<partyAttributes>
											<attribute name="fio">
												<xsl:value-of select="partyAttributes/fio"/>
											</attribute>
										<attribute name="email">
											<xsl:value-of select="partyAttributes/email"/>
										</attribute>
										<xsl:if test="partyAttributes/affiliate">
											<attribute name="affiliate">
												<xsl:value-of select="partyAttributes/affiliate"/>
											</attribute>
										</xsl:if>
									</partyAttributes>
								</projectParty>
							</xsl:for-each>
						</xsl:for-each>
					</projectParties>
				</project>
			</xsl:for-each>
		</submitProjectSIPRequest>
	</xsl:template>
</xsl:stylesheet>