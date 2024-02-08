<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:etc="http://etc.ru">
		<etc:PutXml>
			<etc:acLogin>germes</etc:acLogin>
			<etc:acPassword>1Qq</etc:acPassword>
			<etc:escode>rostel</etc:escode>
			<etc:uri>CancelGroupAct#<xsl:value-of select="/CancelGroupAct/@QUEUE_ID"/>:<xsl:value-of select="/CancelGroupAct/Number"/>
			</etc:uri>
			<etc:content>
				<CancelGroupAct>
					<Number>
						<xsl:value-of select="/CancelGroupAct/Number"/>
					</Number>
					<DocDate>
						<xsl:value-of select="/CancelGroupAct/DocDate"/>
					</DocDate>
					<Name>
						<xsl:value-of select="/CancelGroupAct/Name"/>
					</Name>
					<xsl:copy-of select="/CancelGroupAct/Customer"/>
					<NumberOrder><xsl:value-of select="/OrderChange/NumberOrder"/></NumberOrder>
					<xsl:copy-of select="/CancelGroupAct/IDGroupAct"/>
					<xsl:copy-of select="/CancelGroupAct/Reason"/>
				</CancelGroupAct>
			</etc:content>
		</etc:PutXml>
	</xsl:template>
</xsl:stylesheet>