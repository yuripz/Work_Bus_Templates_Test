<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:proj="http://nri.rt.ru/NetworkDevelopment">
		<proj:cancelResourcesBookingRequest>
			<xsl:for-each select="CancelResourcesBookingRequest">
				<originator>HERMES</originator>
				<receiver>
					<xsl:value-of select="receiver"/>
				</receiver>
				<payload>
					<xsl:for-each select="payload">
						<reservationId>
							<xsl:value-of select="reservationId"/>
						</reservationId>
						<cancelReason>
							<xsl:value-of select="cancelReason"/>
						</cancelReason>
					</xsl:for-each>
					<!-- payload -->
				</payload>
			</xsl:for-each>
			<!-- CancelResourcesBookingRequest-->
		</proj:cancelResourcesBookingRequest>
	</xsl:template>
</xsl:stylesheet>