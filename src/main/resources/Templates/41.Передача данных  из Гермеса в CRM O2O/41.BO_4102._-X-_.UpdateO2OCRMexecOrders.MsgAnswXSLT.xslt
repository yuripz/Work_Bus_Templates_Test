<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="ResponseO2OCRMexec!=''">
				<Confirmation>
					<ResultCode>
						<xsl:value-of select="/ResponseO2OCRMexec/responseCode"/>
					</ResultCode>
					<Message>
						<xsl:value-of select="/ResponseO2OCRMexec/responseBody"/>
					</Message>
					<DetailList>
						<ResponseFromExternalSystem>
								<ResultCode>
									<xsl:value-of select="/ResponseO2OCRMexec/responseCode"/>
								</ResultCode>
								<xsl:if test="/ResponseO2OCRMexec/responseCode != '0' ">
									<Message>Сбой в CRM O2O:<xsl:value-of select="responseBody"/>
									</Message>
								</xsl:if>
								<xsl:if test="/ResponseO2OCRMexec/responseCode = '0' ">
									<Message>Response from CRM O2O oK:
										<xsl:value-of select="/ResponseO2OCRMexec/responseBody"/>
									</Message>
								</xsl:if>
							<externalOrderId>
								<xsl:value-of select="/ResponseO2OCRMexec/externalOrderId"/>
							</externalOrderId>
							<number>
								<xsl:value-of select="/ResponseO2OCRMexec/number"/>
							</number>
						</ResponseFromExternalSystem>
					</DetailList>
					<Next>RESOUT</Next>
				</Confirmation>
			</xsl:when>
			<xsl:when test="Fault!=''">
				<xsl:for-each select="Fault">
					<xsl:choose>
						<xsl:when test="ResultCode > 0">
						<Confirmation>
								<ResultCode>
									<xsl:value-of select="ResultCode"/>
								</ResultCode>
								<Message>
<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text><xsl:copy-of select="/Fault"/>
<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
								</Message>
								<DetailList>
						<xsl:copy-of select="/Fault"/>
					        </DetailList>
								<Next>RESOUT</Next>
							</Confirmation>
						</xsl:when>
						<xsl:otherwise>
							<Confirmation>
								<ResultCode>66066</ResultCode>
								<Message>
<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text><xsl:copy-of select="/Fault"/>
<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
								</Message>
								<DetailList>
						<xsl:copy-of select="/Fault"/>
					        </DetailList>
								<Next>RESOUT</Next>
							</Confirmation>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<Confirmation>
					<ResultCode>60006</ResultCode>
					<Message>неизвестный корневой тег, см.DetailList</Message>
					<DetailList>
					    <xsl:copy-of select="/*"/>
					</DetailList>
					   <Next>RESOUT</Next>
				</Confirmation>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>