<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:completeAppointmentRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<originator>HRMS</originator>
			<receiver>
				<xsl:value-of select="/CompleteO2OAppointment/DestRequest"/>
			</receiver>
			<callbackEndpoint>HRMS</callbackEndpoint>
			<xsl:for-each select="CompleteO2OAppointment">
				<requestId>
					<xsl:value-of select="QueueId"/>
				</requestId>
				<xsl:for-each select="wfmRequest">
					<wfmRequest>
						<orderId>
							<xsl:value-of select="orderId"/>
						</orderId>
						<branch>
							<xsl:value-of select="branch"/>
						</branch>
						<affiliate>
							<xsl:value-of select="affiliate"/>
						</affiliate>
						<appointmentId><xsl:value-of select="appointmentId"/></appointmentId>
						<!--Номер наряда в WFM-->
						<appointmentStatus><xsl:value-of select="appointmentStatus"/></appointmentStatus>
						<reasonCode>0</reasonCode>
						<orderComments>
							<Comment>
								<xsl:if test="orderComments/comment/text">
									<text>
										<xsl:value-of select="orderComments/comment/text"/>
									</text>
								</xsl:if>
								<xsl:if test="orderComments/comment/commenter">
									<commenter>
										<xsl:value-of select="orderComments/comment/commenter"/>
									</commenter>
								</xsl:if>
							</Comment>
						</orderComments>
						<appointmentResult>
							<resultCode><xsl:value-of select="appointmentResult/resultCode"/></resultCode>
							<resultText><xsl:value-of select="appointmentResult/resultText"/></resultText>
						</appointmentResult>
					</wfmRequest>
				</xsl:for-each>
				<!-- wfmRequest -->
			</xsl:for-each>
			<!-- CompleteO2OAppointment -->
		</tns:completeAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>
