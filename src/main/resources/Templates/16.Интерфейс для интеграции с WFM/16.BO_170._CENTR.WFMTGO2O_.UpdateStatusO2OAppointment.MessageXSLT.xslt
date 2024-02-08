<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:updateAppointmentRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<originator>HRMS</originator>
			<receiver>
				<xsl:value-of select="/UpdateStatusO2OAppointment/DestRequest"/>
			</receiver>
			<xsl:for-each select="UpdateStatusO2OAppointment">
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
						<appointmentId>
							<xsl:value-of select="appointmentId"/>
						</appointmentId>
						<!--Номер наряда в WFM-->
						<UpdateAppointmentStatus>
							<appointmentStatus>PLANNED</appointmentStatus>
								<comment>
									<xsl:value-of select="UpdateAppointment/orderComments/comment/text"/>
								</comment>
						</UpdateAppointmentStatus>
					</wfmRequest>
				</xsl:for-each><!-- wfmRequest -->
			</xsl:for-each><!-- UpdateStatusO2OAppointment -->
		</tns:updateAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>