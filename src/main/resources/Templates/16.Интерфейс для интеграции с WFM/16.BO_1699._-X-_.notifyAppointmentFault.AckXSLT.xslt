<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://oms.rt.ru/">
	<xsl:template match="/">
		<tns:notifyAppointmentResponse>
			<originator>HRMS</originator>
			<receiver>xx=xx-xx</receiver>
			<result>
			<resultCode>60504
			</resultCode>
			<resultText>Неопознанный источник или невалидная структура входящего сообщения</resultText>
			</result>
		</tns:notifyAppointmentResponse>
	</xsl:template>
</xsl:stylesheet>