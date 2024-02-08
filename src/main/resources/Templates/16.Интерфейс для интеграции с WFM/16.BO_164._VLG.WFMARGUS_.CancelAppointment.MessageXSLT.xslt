<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:cancelAppointmentRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<xsl:choose>
				<xsl:when test="/cancelOrderRequest/hermesOMSPrevMaker= 'cron'">
					<originator>CMS.KKFU</originator>
				</xsl:when>
				<xsl:otherwise>
					<originator>HRMS</originator>
				</xsl:otherwise>
			</xsl:choose>
			<receiver>
				<xsl:value-of select="/cancelOrderRequest/DestRequest"/>
			</receiver>
			<callbackEndpoint>HRMS</callbackEndpoint>
			<xsl:for-each select="cancelOrderRequest">
				<requestId>
					<xsl:value-of select="QueueId"/>
				</requestId>
				<wfmRequest>
					<orderId>
						<xsl:value-of select="kzOrderId"/>
					</orderId>
					<branch>
						<xsl:value-of select="MRFFilialCode"/>
					</branch>
					<affiliate>
						<xsl:value-of select="RegionalFilial"/>
					</affiliate>
					<appointmentId>
						<xsl:value-of select="hermesOMSParam/AppointmentId"/>
					</appointmentId>
					<reasonCode>cancel</reasonCode>
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
							<partyRole>CLIENT</partyRole>
							<partyId>
								<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_ID"/>
							</partyId>
							<partyName>
								<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_NAME"/>
							</partyName>
							<partyAttributes>
								<attribute name="CustomerKPP" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_OKONH"/>
								</attribute>
								<attribute name="CustomerTaxId" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_INN"/>
								</attribute>
								<attribute name="CustomerMacroSegment" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMPromotionType"/>
								</attribute>
								<attribute name="CustomerSegment" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMPromotionSegmentName"/>
								</attribute>
								<attribute name="CustomerContactsName" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_NAME2"/>
								</attribute>
								<attribute name="CustomerPhone" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_CONTACT_PHONE"/>
								</attribute>
								<attribute name="CustomerEmail" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_CONTACT_EMAIL"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>CONTACT</partyRole>
							<partyId>
								<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_ID"/>
							</partyId>
							<!--берем из  [CUSTOM_ID] => 1313585 для клиента-->
							<partyName>
								<xsl:value-of select="/submitOrderRequest/OrderOMSContact/OrderContactPerson"/>
							</partyName>
							<partyAttributes>
								<attribute name="phone" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/OrderOMSContact/OrderContactPhone"/>
								</attribute>
								<!--берем из [OrderContactPhone] => 4444444-->
								<attribute name="email" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/OrderOMSContact/OrderContactEmail"/>
								</attribute>
								<!--берем из  [OrderContactEmail] => @@@@@@-->
							</partyAttributes>
						</orderParty>
						<xsl:if test="/submitOrderRequest/OrderOMSParam/INITIATOR.partyId">
							<orderParty>
								<partyRole>INITIATOR</partyRole>
								<partyId>
									<xsl:value-of select="/submitOrderRequest/OrderOMSParam/INITIATOR.partyId"/>
								</partyId>
								<partyName>
									<xsl:value-of select="/submitOrderRequest/OrderOMSParam/INITIATOR.partyName"/>
								</partyName>
								<partyAttributes>
									<attribute name="phone" status="AC" isChanged="false">
										<xsl:value-of select="/submitOrderRequest/OrderOMSParam/INITIATOR.phone"/>
									</attribute>
									<attribute name="email" status="AC" isChanged="false">
										<xsl:value-of select="/submitOrderRequest/OrderOMSParam/INITIATOR.email"/>
									</attribute>
								</partyAttributes>
							</orderParty>
						</xsl:if>
						<xsl:if test="/submitOrderRequest/OrderOMSParam/SALES.partyId">
							<orderParty>
								<partyRole>SALES</partyRole>
								<partyId>
									<xsl:value-of select="/submitOrderRequest/OrderOMSParam/SALES.partyId"/>
								</partyId>
								<partyName>
									<xsl:value-of select="/submitOrderRequest/OrderOMSParam/SALES.partyName"/>
								</partyName>
								<partyAttributes>
									<attribute name="phone" status="AC" isChanged="false">
										<xsl:value-of select="/submitOrderRequest/OrderOMSParam/SALES.phone"/>
									</attribute>
									<attribute name="email" status="AC" isChanged="false">
										<xsl:value-of select="/submitOrderRequest/OrderOMSParam/SALES.email"/>
									</attribute>
								</partyAttributes>
							</orderParty>
						</xsl:if>
						<xsl:for-each select="RequestAttachmentList">
							<xsl:for-each select="RequestAttachment">
								<orderAttachment>
									<attachmentType>
										<xsl:value-of select="AttachmentTypeID"/>
									</attachmentType>
									<creationDate>
										<xsl:value-of select="AttachmentDate"/>
									</creationDate>
									<author>
										<xsl:value-of select="AttachmentAuthor"/> (<xsl:value-of select="AttachmentAuthorLogin"/>)</author>
									<URL>
										<xsl:value-of select="AttachmentURL"/>
									</URL>
									<header>
										<xsl:value-of select="AttachmentName"/>
										<xsl:value-of select="AttachmentCategory"/>
									</header>
									<fileName>
										<xsl:value-of select="AttachmentFileName"/>
									</fileName>
									<fileExtension>
										<xsl:value-of select="AttachmentFileExtension"/>
									</fileExtension>
								</orderAttachment>
							</xsl:for-each>
						</xsl:for-each>
					</orderParties>
					<orderComments>
						<Comment>
							<xsl:if test="hermesOMSPrevComment!=''">
								<text>
									<xsl:value-of select="hermesOMSPrevComment"/>
								</text>
							</xsl:if>
							<xsl:if test="hermesOMSPrevComment=''">
								<text>
									<xsl:value-of select="SYSOrderStage"/>
								</text>
							</xsl:if>
						</Comment>
					</orderComments>
				</wfmRequest>
			</xsl:for-each>
		</tns:cancelAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>
