<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:equ="http://nri.rt.ru/Equipment">
		<equ:getLineLimitationRequest>
			<originator>HRMS</originator>
			<receiver>NRI.SIBIR.TGRAD</receiver>
			<payload>
				<lineId>
					<xsl:value-of select="getLineLimitationRequest/payload/lineId"/>
				</lineId>
			</payload>
		</equ:getLineLimitationRequest>
	</xsl:template>
</xsl:stylesheet>