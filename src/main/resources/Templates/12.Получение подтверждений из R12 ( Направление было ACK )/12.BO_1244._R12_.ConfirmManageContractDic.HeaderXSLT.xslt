<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<urn:Context xmlns:urn="urn:ru:rt:fuip:context">
			<xsl:for-each select="Request">
				<EventInitiator>
					<xsl:value-of select="init"/>
				</EventInitiator>
				<EventKey>
					<xsl:value-of select="outid"/>
				</EventKey>
				<Source>
					<xsl:value-of select="src"/>
				</Source>
				<Destination>
					<xsl:value-of select="dst"/>
				</Destination>
				<BusOperationId>
					<xsl:value-of select="opid mod 100"/>
				</BusOperationId>
			</xsl:for-each>
		</urn:Context>
	</xsl:template>
</xsl:stylesheet>