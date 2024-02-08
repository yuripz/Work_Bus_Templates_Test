<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:urn="urn:ru:rt:hrms:fault">
		<urn:Fault>
			<ResultCode>
				<xsl:value-of select="/TransferFaultRequest/ResultCode"/>
			</ResultCode>
			<Message>
				<xsl:value-of select="/TransferFaultRequest/Message"/>
			</Message>
		</urn:Fault>
	</xsl:template>
</xsl:stylesheet>