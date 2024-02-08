<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:updateAppointmentRequest xmlns:tns="http://oms.rt.ru/">
			<xsl:for-each select="UpdateO2OAppointment">
				<originator>
					<xsl:value-of select="originator"/>
				</originator>
				<receiver>
					<xsl:value-of select="receiver"/>
				</receiver>
				<requestId>
					<xsl:value-of select="requestId"/>
				</requestId>
				<wfmRequest>
					<xsl:for-each select="wfmRequest">
						<orderId>
							<xsl:value-of select="orderId"/>
						</orderId>
						<branch>
							<xsl:value-of select="branch"/>
						</branch>
						<affiliate>
							<xsl:value-of select="affiliate"/>
						</affiliate>
						<appointmentId>
							<xsl:value-of select="appointmentId"/>
						</appointmentId>
						<UpdateAppointment>
							<orderComments>
								<xsl:for-each select="orderComment">
									<Comment>
<!--										<date>
											<xsl:value-of select="date"/>
										</date>-->
										<commenter><xsl:value-of select="commenter"/></commenter>
										<text>
											<xsl:value-of select="text"/>
										</text>
									</Comment>
								</xsl:for-each>
							</orderComments>
						</UpdateAppointment>
					</xsl:for-each>
				</wfmRequest>
			</xsl:for-each>
		</tns:updateAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>
