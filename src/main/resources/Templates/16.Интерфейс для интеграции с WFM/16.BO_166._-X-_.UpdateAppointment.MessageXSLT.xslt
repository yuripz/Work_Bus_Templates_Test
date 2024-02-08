<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:updateAppointmentRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<xsl:if test="/submitOrderRequest/MsgDirection_Cod!= 'CMS.KKFU'">
				<originator>HRMS</originator>
			</xsl:if>
			<xsl:if test="/submitOrderRequest/MsgDirection_Cod= 'CMS.KKFU'">
				<originator>
					<xsl:value-of select="/submitOrderRequest/MsgDirection_Cod"/>
				</originator>
			</xsl:if>
			<receiver>SBR.WFM</receiver>
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
					<UpdateAppointment>
						<orderParties>
							<orderParty>
								<partyRole>DESIGNER</partyRole>
								<partyId>
									<xsl:value-of select="/submitOrderRequest/hermesOMSCreator/AU_LOGIN"/>
								</partyId>
								<partyName>
									<xsl:value-of select="/submitOrderRequest/hermesOMSCreator/AU_NAME"/>
								</partyName>
								<partyAttributes>
									<attribute name="email" status="AC" isChanged="false">
										<xsl:value-of select="/submitOrderRequest/hermesOMSCreator/AU_EMAIL"/>
									</attribute>
								</partyAttributes>
							</orderParty>
							<orderParty>
								<partyRole>INITIATOR</partyRole>
								<partyId>
									<xsl:value-of select="/submitOrderRequest/hermesOMSCreator/AU_LOGIN"/>
								</partyId>
								<partyName>
									<xsl:value-of select="/submitOrderRequest/hermesOMSCreator/AU_NAME"/>
								</partyName>
								<partyAttributes>
									<attribute name="email" status="AC" isChanged="false">
										<xsl:value-of select="/submitOrderRequest/hermesOMSCreator/AU_EMAIL"/>
									</attribute>
								</partyAttributes>
							</orderParty>
							<xsl:for-each select="CRMRequestIdList">
								<xsl:for-each select="CRMRequest">
									<xsl:if test="SrvOMSParam/SRV_SLTU_RESERVE_NUM!=''">
										<orderParty>
											<partyRole>RESERVATION</partyRole>
											<partyId>
												<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE"/>
											</partyId>
											<partyName>
												<xsl:value-of select="ServiceName"/>
											</partyName>
											<partyAttributes>
												<attribute name="reservationNumber" status="AC" isChanged="false">
													<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE_NUM"/>
												</attribute>
												<attribute name="reservationId" status="AC" isChanged="false">
													<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE"/>
												</attribute>
												<attribute name="serviceItemId" status="AC" isChanged="false">
													<xsl:value-of select="SrvOMSParam/SRV_SLTU_SERVICE_ID"/>
												</attribute>
												<attribute name="lineId" status="AC" isChanged="false">
													<xsl:value-of select="SrvOMSParam/SRV_LINE_NUMBER"/>
												</attribute>
											</partyAttributes>
										</orderParty>
									</xsl:if>
								</xsl:for-each>
							</xsl:for-each>
						</orderParties>
						<orderComments>
							<comment>
								<xsl:if test="SurveyComment">
									<text>
										<xsl:value-of select="SurveyComment"/>
									</text>
								</xsl:if>
							</comment>
						</orderComments>
					</UpdateAppointment>
				</wfmRequest>
			</xsl:for-each>
		</tns:updateAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>
