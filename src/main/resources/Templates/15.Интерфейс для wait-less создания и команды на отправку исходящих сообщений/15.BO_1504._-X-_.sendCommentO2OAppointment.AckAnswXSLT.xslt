<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<sendCommentO2OResponse>
				<xsl:choose>
					<xsl:when test="/Confirmation/DetailList">
						<ResultCode>
							<xsl:value-of select="/Confirmation/ResultCode"/>
						</ResultCode>
						<Message>
							<xsl:value-of select="/Confirmation/Message"/>
						</Message>
						<Queue_Id>
							<xsl:value-of select="/Confirmation/DetailList/Queue_Id"/>
						</Queue_Id>
						<xsl:copy-of select="DetailList/updateAppointmentResponse"/>
					</xsl:when>
					<xsl:otherwise>
						<ResultCode>-1020304</ResultCode>
						<Message>Пришло пустое сообщение об updateAppointmentResponse</Message>
					</xsl:otherwise>
				</xsl:choose>
			</sendCommentO2OResponse>
		</xsl:for-each>
		<!--  orderResult -->
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<Result>
						<Cod>
							<xsl:value-of select="ResultCode"/>
						</Cod>
						<Text>
							<xsl:value-of select="Message"/>
						</Text>
					</Result>
				</xsl:when>
				<xsl:otherwise>
					<Result>
						<Cod>6666</Cod>
						<Text>
							<xsl:copy-of select="/Fault"/>
						</Text>
					</Result>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>