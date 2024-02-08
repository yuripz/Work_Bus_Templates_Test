<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:net="http://nri.rt.ru/NetworkDevelopment">
		<net:checkPortActiveServicesRequest>
			<xsl:for-each select="checkPortActiveServicesRequest">
				<originator>HERMES</originator>
				<receiver>
					<xsl:value-of select="receiver"/>
				</receiver>
				<payload>
					<xsl:for-each select="payload">
						<portId>
							<xsl:value-of select="portId"/>
						</portId>
						<equipmentId>
							<xsl:value-of select="equipmentId"/>
						</equipmentId>
					</xsl:for-each>
					<!-- payload -->
				</payload>
			</xsl:for-each>
		</net:checkPortActiveServicesRequest>
	</xsl:template>
</xsl:stylesheet>