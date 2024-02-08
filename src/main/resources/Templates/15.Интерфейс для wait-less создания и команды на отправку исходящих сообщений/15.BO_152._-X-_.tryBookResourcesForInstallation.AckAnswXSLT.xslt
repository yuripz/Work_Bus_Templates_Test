<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<BookResourcesForInstallation>
				<xsl:choose>
					<xsl:when test="/Confirmation/DetailList/payload">
						<ResultCode>
							<xsl:value-of select="/Confirmation/ResultCode"/>
						</ResultCode>
						<Message>
							<xsl:value-of select="/Confirmation/Message"/>
						</Message>
						<!--<xsl:copy-of select="DetailList/payload"/>-->
					</xsl:when>
					<xsl:otherwise>
						<ResultCode>
							<xsl:value-of select="ResultCode"/>
						</ResultCode>
						<Message>
							<xsl:value-of select="Message"/>
						</Message>
					</xsl:otherwise>
				</xsl:choose>
			</BookResourcesForInstallation>
		</xsl:for-each>
		<!--  orderResult -->
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<Result>
						<Cod>
							<xsl:value-of select="ResultCode"/>
						</Cod>
						<Text>
							<xsl:value-of select="Message"/>
						</Text>
					</Result>
				</xsl:when>
				<xsl:otherwise>
					<Result>
						<Cod>6666</Cod>
						<Text>
							<xsl:copy-of select="/Fault"/>
						</Text>
					</Result>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>