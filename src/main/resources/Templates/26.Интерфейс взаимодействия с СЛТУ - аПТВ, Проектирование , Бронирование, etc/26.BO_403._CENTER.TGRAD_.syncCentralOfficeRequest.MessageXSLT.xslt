<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:net="http://nri.rt.ru/Supplementary">
		<net:syncCentralOfficeRequest>
			<xsl:for-each select="syncCentralOfficeRequest">
				<originator>HERMES</originator>
				<receiver>CENTER.TGRAD</receiver>
				<payload>
					<xsl:for-each select="payload">
						<!--type: RecordStatusFilter - enumeration: [ANY,ACTIVE_ONLY,DELETED_ONLY]-->
						<recordsStatus>
							<xsl:value-of select="recordsStatus"/>
						</recordsStatus>
						<changedSince>
							<xsl:value-of select="changedSince"/>
						</changedSince>
					</xsl:for-each>
					<!-- payload -->
				</payload>
			</xsl:for-each>
			<!-- syncCentralOfficeRequest-->
		</net:syncCentralOfficeRequest>
	</xsl:template>
</xsl:stylesheet>