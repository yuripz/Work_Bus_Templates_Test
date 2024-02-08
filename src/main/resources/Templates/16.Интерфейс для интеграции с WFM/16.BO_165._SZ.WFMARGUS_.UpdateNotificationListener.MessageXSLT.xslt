<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:updateAppointmentRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<originator>COM.B2B</originator>
			<receiver>SZ.WFMARGUS</receiver>
			<xsl:for-each select="submitOrderRequest">
				<requestId>
					<xsl:value-of select="QueueId"/>
				</requestId>
				<wfmRequest>
					<orderId>
						<xsl:value-of select="CRMOrderId"/>
					</orderId>
					<branch>
						<xsl:value-of select="MRFFilialCode"/>
					</branch>
					<affiliate>
						<xsl:value-of select="RegionalFilial"/>
					</affiliate>
					<appointmentId>
						<xsl:value-of select="OrderOMSParam/CRMAppointmentID"/>
					</appointmentId>
					<UpdateNotificationListener>
						<callbackEndpoint>HRMS</callbackEndpoint>
						<listenerAction>ADD</listenerAction>
					</UpdateNotificationListener>
				</wfmRequest>
			</xsl:for-each>
		</tns:updateAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>
