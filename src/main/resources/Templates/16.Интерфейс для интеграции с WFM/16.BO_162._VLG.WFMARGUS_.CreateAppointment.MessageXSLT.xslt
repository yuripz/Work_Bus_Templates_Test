<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:createAppointmentRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<xsl:if test="/submitOrderRequest/MsgDirection_Cod!= 'CMS.KKFU'">
				<originator>HRMS</originator>
			</xsl:if>
			<xsl:if test="/submitOrderRequest/MsgDirection_Cod= 'CMS.KKFU'">
				<originator>
					<xsl:value-of select="/submitOrderRequest/MsgDirection_Cod"/>
				</originator>
			</xsl:if>
			<receiver>
				<xsl:value-of select="/submitOrderRequest/DestRequest"/>
			</receiver>
			<callbackEndpoint>HRMS</callbackEndpoint>
			<!--<mode>SYNC</mode>-->
			<xsl:for-each select="submitOrderRequest">
				<requestId>
					<xsl:value-of select="QueueId"/>
				</requestId>
				<wfmRequest>
					<orderId>
						<xsl:value-of select="kzOrderId"/>
					</orderId>
					<orderDate>
						<xsl:value-of select="ChangeStatusDate"/>
					</orderDate>
					<branch>
						<xsl:value-of select="MRFFilialCode"/>
					</branch>
					<affiliate>
						<xsl:value-of select="RegionalFilial"/>
					</affiliate>
					<appointmentType>SURVEY</appointmentType>
					<appointmentStatus>POSTPONED</appointmentStatus>
					<readinessStatus>NOT_READY_TO_EXECUTE</readinessStatus>
					<xsl:if test="CRMRequestIdList/CRMRequest[1]/SrvOMSParam/SRV_DT_START_atom">
						<intervalStartDate>
							<xsl:value-of select="CRMRequestIdList/CRMRequest[1]/SrvOMSParam/SRV_DT_START_atom"/>
						</intervalStartDate>
					</xsl:if>
					<orderComments>
						<Comment>
							<xsl:if test="SurveyComment">
								<text>
									<xsl:value-of select="SurveyComment"/>
								</text>
							</xsl:if>
						</Comment>
					</orderComments>
					<location>
						<locationId>
							<xsl:value-of select="/submitOrderRequest/SYSOrderServicesAddr/GID"/>
						</locationId>
						<locationCategory>STRICT</locationCategory>
						<locationRegister>GID</locationRegister>
						<locationAttributes>
							<attribute name="locationPremises">
								<xsl:value-of select="/submitOrderRequest/SYSOrderServicesAddr/ExtOffice"/>
							</attribute>
						</locationAttributes>
					</location>
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
								<attribute name="category" status="AC" isChanged="false">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_CATEGORY"/>
								</attribute>
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
					<attributes>
						<attribute name="orderOMSId" status="AC" isChanged="false">
							<xsl:value-of select="/submitOrderRequest/OrderOMSId"/>
						</attribute>
						<attribute name="CustomerProjectName" status="AC" isChanged="false">
							<xsl:value-of select="OrderOMSParam/CRMPromotionID"/>
						</attribute>
						<attribute name="CustomerProjectId" status="AC" isChanged="false">
							<xsl:value-of select="OrderOMSParam/PromoOrderID"/>
						</attribute>
						<attribute name="ServiceBillingSystem" status="AC" isChanged="false">
							<xsl:value-of select="OrderOMSParam/ServiceBillingSystem"/>
						</attribute>
						<xsl:if test="/submitOrderRequest/MsgDirection_Cod= 'CMS.KKFU'">
							<attribute name="LastMileRTC_CMS" status="AC" isChanged="false">
								<xsl:value-of select="/submitOrderRequest/CRMOrderId"/>
							</attribute>
						</xsl:if>
						<attribute name="OrderCSRFilial" status="AC" isChanged="false">
							<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMOriginatorLevelR12"/>
						</attribute>
						<attribute name="technology" status="AC" isChanged="false">
							<xsl:value-of select="/submitOrderRequest/Technology"/>
						</attribute>
						<attribute name="orderURL" status="AC" isChanged="false">
							<xsl:value-of select="/submitOrderRequest/SYSOrderURL"/>
						</attribute>
					</attributes>
					<xsl:for-each select="CRMRequestIdList">
						<orderItems>
							<xsl:for-each select="CRMRequest">
								<xsl:if test="IsRequiredInstall">
									<xsl:if test="IsRequiredInstall='1'">
										<orderItem>
											<orderItemId>
												<xsl:value-of select="CSERVICE_ID"/>
											</orderItemId>
											<orderItemAction>
												<xsl:value-of select="orderItemAction"/>
											</orderItemAction>
											<orderItemCategory>CFS</orderItemCategory>
											<orderItemSpecification>
												<catalogId>SC</catalogId>
												<specId>
													<xsl:value-of select="CFFS_ID"/>
												</specId>
												<specVersion>1.0</specVersion>
												<specName>
													<xsl:value-of select="ServiceName"/>
												</specName>
											</orderItemSpecification>
											<orderItemAttributes>
												<xsl:if test="SrvOMSParam/SRV_CMS_ServiceSpeed">
													<xsl:variable name="originator" select="SrvOMSParam/SRV_CMS_ServiceSpeed"/>
													<attribute name="bandwidth" status="AC" isChanged="false">
														<xsl:value-of select="format-number($originator, '##')"/>
														<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceSpeed_SCALE_dict"/>
													</attribute>
													<attribute name="ServiceSpeedValue" status="AC" isChanged="false">
														<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceSpeed"/>
													</attribute>
													<!--Скорость сервиса, кбит/c-->
													<attribute name="ServiceSpeedMeasure" status="AC" isChanged="false">
														<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceSpeed_SCALE"/>
													</attribute>
												</xsl:if>
												<!--Единицы измерения скорости-->
												<attribute name="access_interface" status="AC" isChanged="false">
													<xsl:value-of select="SrvOMSParam/SRV_CMS_fldPoint2Interface"/>
												</attribute>
												<!--Интерфейс клиента-->
												<xsl:if test="ServiceType='NETWORK'">
													<!-- technology lineId , serviceItemId нужно выводить в XML, только для услуги ServiceType='NETWORK' -->
													<attribute name="accountNumber" status="AC" isChanged="false">
														<xsl:value-of select="SrvOMSParam/SRV_SLTU_ACCOUNTNUMBER"/>
													</attribute>
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
												</xsl:if>
												<xsl:if test="ServiceType='IP_address'">
													<attribute name="service_qty" status="AC" isChanged="false">1</attribute>
												</xsl:if>
											</orderItemAttributes>
											<orderItemAction>
												<xsl:value-of select="orderItemAction"/>
											</orderItemAction>
											<!--<orderItemResult/>-->
											<xsl:if test="ServiceReference[1]">
												<orderItemReferences>
													<xsl:for-each select="ServiceReference">
														<xsl:variable name="nameF" select="NAME"/>
														<xsl:variable name="specIdF" select="SPECID"/>
														<xsl:variable name="CSERVICE_ID_F" select="CSERVICE_ID"/>
														<reference name="{$nameF}" specId="{$specIdF}" status="AC" isChanged="false">
															<xsl:value-of select="CSERVICE_ASSOC_ID"/>
														</reference>
													</xsl:for-each>
												</orderItemReferences>
											</xsl:if>
										</orderItem>
									</xsl:if>
								</xsl:if>
								<!-- if  IsRequiredInstall -->
							</xsl:for-each>
						</orderItems>
					</xsl:for-each>
					<!--		<orderAppointmentId>String</orderAppointmentId>-->
				</wfmRequest>
			</xsl:for-each>
		</tns:createAppointmentRequest>
	</xsl:template>
</xsl:stylesheet>