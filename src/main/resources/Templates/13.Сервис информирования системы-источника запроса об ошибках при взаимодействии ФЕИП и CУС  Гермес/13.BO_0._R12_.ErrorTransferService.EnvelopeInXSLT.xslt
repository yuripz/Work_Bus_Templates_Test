<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<Envelope>
			<Header>
				<Context>
					<EventInitiator>R12</EventInitiator>
					<EventKey>
						<xsl:value-of select="/Envelope/Header/Context/EventKey"/>
					</EventKey>
					<Source>R12</Source>
					<Destination>HRMS</Destination>
					<BusOperationId>1301</BusOperationId>
				</Context>
			</Header>
			<Body>
				<ErrorTransferReceiver>
					<xsl:copy-of select="Envelope/Header"/>
					<xsl:copy-of select="Envelope/Body"/>
				</ErrorTransferReceiver>
			</Body>
		</Envelope>
	</xsl:template>
</xsl:stylesheet>