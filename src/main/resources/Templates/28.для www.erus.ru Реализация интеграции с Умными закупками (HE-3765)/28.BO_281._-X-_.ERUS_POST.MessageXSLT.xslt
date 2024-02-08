<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:etc="http://etc.ru">
		<etc:PutXml>
			<etc:acLogin>germes</etc:acLogin>
			<etc:acPassword>1Qq</etc:acPassword>
			<etc:escode>rostel</etc:escode>
			<etc:uri>GroupRequest#<xsl:value-of select="/GroupRequest/@QUEUE_ID"/>:<xsl:value-of select="/GroupRequest/Number"/>
			</etc:uri>
			<etc:content>
				<GroupRequest>
					<Number>
						<xsl:value-of select="/GroupRequest/Number"/>
					</Number>
					<LinkExternal>
						<xsl:value-of select="/GroupRequest/LinkExternal"/>
					</LinkExternal>
					<DocDate>
						<xsl:value-of select="/GroupRequest/DocDate"/>
					</DocDate>
					<Name>
						<xsl:value-of select="/GroupRequest/Name"/>
					</Name>
					<xsl:copy-of select="/GroupRequest/Customer"/>
					<SignOrder>
						<xsl:value-of select="/GroupRequest/SignOrder"/>
					</SignOrder>
					<xsl:if test="/GroupRequest/Segment != '' ">
					<xsl:variable name="Segment" select="/GroupRequest/Segment"/>
						<xsl:choose>
							<xsl:when test=" $Segment= 'B2B' ">
								<Segment>
									<xsl:value-of select="$Segment"/>
								</Segment>
							</xsl:when>
							<xsl:when test=" $Segment= 'B2C' ">
								<Segment>
									<xsl:value-of select="$Segment"/>
								</Segment>
							</xsl:when>
							<xsl:otherwise></xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<xsl:copy-of select="/GroupRequest/RequestInfo"/>
				</GroupRequest>
			</etc:content>
		</etc:PutXml>
	</xsl:template>
</xsl:stylesheet>