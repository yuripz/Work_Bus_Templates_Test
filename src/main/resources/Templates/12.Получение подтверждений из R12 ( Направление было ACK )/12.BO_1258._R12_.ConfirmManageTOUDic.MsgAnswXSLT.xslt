<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="SuccessResponse">
			<xsl:choose>
				<xsl:when test="/SuccessResponse/SuccessResponse=0">
					<Result>
						<Cod>0</Cod>
						<Next>DELOUT</Next>
						<Text>Ответ SuccessResponse получен</Text>
					</Result>
				</xsl:when>
				<xsl:otherwise>
					<Result>
						<Cod>45054</Cod>
						<Text>
							<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
							<xsl:copy-of select="/SuccessResponse"/>
							<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
						</Text>
						<Next>ATTOUT</Next>
					</Result>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="faultcode > 0">
					<Result>
						<Cod>
							<xsl:value-of select="faultcode"/>
						</Cod>
						<Text>
							<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
							<xsl:copy-of select="/Fault"/>
							<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
						</Text>
						<Next>ATTOUT</Next>
					</Result>
				</xsl:when>
				<xsl:otherwise>
					<Result>
						<Cod>6666</Cod>
						<Text>
							<xsl:copy-of select="concat(/Fault/faultcode, ' ( ', /Fault/faultstring, ' ) ' )"/>
						</Text>
						<Next>ATTOUT</Next>
					</Result>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>