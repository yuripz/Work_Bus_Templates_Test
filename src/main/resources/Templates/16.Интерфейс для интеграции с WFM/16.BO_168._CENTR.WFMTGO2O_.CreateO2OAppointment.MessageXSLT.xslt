<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:createAppointmentRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<originator>HRMS</originator>
			<receiver>
				<xsl:value-of select="/CreateO2OAppointment/DestRequest"/>
			</receiver>
			<callbackEndpoint>HRMS</callbackEndpoint>
			<!--<mode>SYNC</mode>-->
			<xsl:for-each select="CreateO2OAppointment">
				<requestId>
					<xsl:value-of select="QueueId"/>
				</requestId>
				<xsl:for-each select="wfmRequest">
					<wfmRequest>
						<orderId>
							<xsl:value-of select="orderId"/>
						</orderId>
						<orderDate>
							<xsl:value-of select="orderDate"/>
						</orderDate>
						<branch>
							<xsl:value-of select="branch"/>
						</branch>
						<affiliate>
							<xsl:value-of select="affiliate"/>
						</affiliate>
						<appointmentType>
							<xsl:value-of select="appointmentType"/>
						</appointmentType>
						<!--<appointmentStatus>POSTPONED</appointmentStatus>
						<readinessStatus>NOT_READY_TO_EXECUTE</readinessStatus>-->
						<orderComments>
							<Comment>
								<xsl:if test="SurveyComment">
									<text>
										<xsl:value-of select="SurveyComment"/>
									</text>
								</xsl:if>
								<xsl:if test="orderComments/comment/commenter">
									<commenter>
										<xsl:value-of select="orderComments/comment/commenter"/>
									</commenter>
								</xsl:if>
							</Comment>
						</orderComments>
						<location>
							<locationId>
								<xsl:value-of select="location/locationId"/>
							</locationId>
							<locationCategory>STRICT</locationCategory>
							<locationRegister>GID</locationRegister>
							<locationAttributes>
								<attribute name="locationPremises">
									<xsl:value-of select="location/locationAttributes/attributes/AddrTitle"/>
								</attribute>
							</locationAttributes>
						</location>
						<orderParties>
							<orderParty>
								<partyRole>INITIATOR</partyRole>
								<partyId>
									<xsl:value-of select="/CreateO2OAppointment/wfmRequest/orderParties/orderParty/partyId"/>
								</partyId>
								<xsl:variable name="partyIdF" select="/CreateO2OAppointment/wfmRequest/orderParties/orderParty/partyId"/>
								<xsl:choose>
									<xsl:when test="$partyIdF= '1' ">
										<partyName>Tele2</partyName>
									</xsl:when>
									<xsl:when test="$partyIdF= '2' ">
										<partyName>Beeline</partyName>
									</xsl:when>
									<xsl:when test="$partyIdF= '3' ">
										<partyName>Megafon</partyName>
									</xsl:when>
									<xsl:when test="$partyIdF= '4' ">
										<partyName>MTS</partyName>
									</xsl:when>
									<xsl:otherwise>
										<partyName>0</partyName>
									</xsl:otherwise>
								</xsl:choose>
								<partyAttributes>
									<attribute name="description" status="AC" isChanged="false">
										<xsl:value-of select="/CreateO2OAppointment/wfmRequest/orderParties/orderParty/partyName"/>
									</attribute>
								</partyAttributes>
							</orderParty>
						</orderParties>
						<attributes>
							<attribute name="objectId" status="AC" isChanged="false">
								<xsl:value-of select="attributes/objectId"/>
							</attribute>
							<attribute name="title" status="AC" isChanged="false">Разовый наряд WFM O2O</attribute>
						</attributes>
					</wfmRequest>
				</xsl:for-each>
				<!-- wfmRequest -->
			</xsl:for-each>
			<!-- CreateO2OAppointment -->
		</tns:createAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>