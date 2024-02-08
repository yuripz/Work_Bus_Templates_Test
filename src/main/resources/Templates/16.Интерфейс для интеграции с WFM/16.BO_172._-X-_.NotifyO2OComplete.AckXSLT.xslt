<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://oms.rt.ru/">
	<xsl:template match="/">
		<tns:notifyAppointmentResponse>
			<originator>HRMS</originator>
			<receiver><xsl:value-of select="/Confirmation/notifyAppointmentResponse/receiver"/></receiver>
			<result>
				<xsl:choose>
					<xsl:when test="/Confirmation/ResultCode">
						<resultCode>
							<xsl:value-of select="/Confirmation/ResultCode"/>
						</resultCode>
						<resultText>
							<xsl:value-of select="/Confirmation/Message"/>
						</resultText>
					</xsl:when>
					<xsl:otherwise>
						<resultCode>60708
						</resultCode>
						<resultText>Системный сбой прикладного обработчика</resultText>
					</xsl:otherwise>
				</xsl:choose>
			</result>
		</tns:notifyAppointmentResponse>
	</xsl:template>
</xsl:stylesheet>