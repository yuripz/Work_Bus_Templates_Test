<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:net="http://nri.rt.ru/NetworkDevelopment">
		<net:checkDevicePortsRequest>
			<xsl:for-each select="checkDevicePortsRequest">
				<originator>HERMES</originator>
				<receiver>
					<xsl:value-of select="receiver"/>
				</receiver>
				<payload>
					<xsl:for-each select="payload">
						<equipmentId>
							<xsl:value-of select="equipmentId"/>
						</equipmentId>
						<technology>
							<xsl:value-of select="technology"/>
						</technology>
					</xsl:for-each>
					<!-- payload -->
				</payload>
			</xsl:for-each>
			<!-- BookResourcesForInstallationRequest -->
		</net:checkDevicePortsRequest>
	</xsl:template>
</xsl:stylesheet>