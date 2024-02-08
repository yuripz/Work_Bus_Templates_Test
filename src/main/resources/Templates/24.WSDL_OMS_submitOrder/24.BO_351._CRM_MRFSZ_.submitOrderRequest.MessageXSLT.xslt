<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:submitOrderRequest xmlns:tns="http://oms.rt.ru/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
			<originator>HRMS</originator>
			<receiver>CRM_MRFSZ</receiver>
			<callbackEndpoint>HRMS</callbackEndpoint>
			<!--<mode>SYNC</mode>-->
			<xsl:for-each select="submitOrderRequest">
				<requestId>
					<xsl:value-of select="QueueId"/>
				</requestId>
				<order>
					<orderId>
						<xsl:value-of select="OrderOMSId"/>
					</orderId>
					<!--<orderType><xsl:value-of select="CRMRequestStatus"/></orderType>-->
					<xsl:variable name="orderStateF" select="CRMRequestStatus"/>
					<xsl:choose>
						<xsl:when test="$orderStateF= 'PREPROVIDE' ">
							<orderType>PREPROVIDE</orderType>
						</xsl:when>
						<xsl:when test="$orderStateF= 'PROVIDE' ">
							<orderType>PROVIDE</orderType>
						</xsl:when>
						<xsl:otherwise>
							<orderType>INPROGRESS</orderType>
						</xsl:otherwise>
					</xsl:choose>
					<!--<orderParentId>String</orderParentId>-->
					<orderPriority>
						<xsl:value-of select="OrderPriority"/>
					</orderPriority>
					<!--		<orderCategory>KKFU</orderCategory>
		<orderChannel>String</orderChannel>
		<branch>String</branch>
		<affiliate>String</affiliate>
-->
					<orderAttributes>
						<attribute name="CustomerProjectName">
							<xsl:value-of select="OrderOMSParam/CRMPromotionID"/>
						</attribute>
						<attribute name="CustomerProjectId">
							<xsl:value-of select="OrderOMSParam/PromoOrderID"/>
						</attribute>
						<attribute name="ServiceBillingSystem">
							<xsl:value-of select="OrderOMSParam/ServiceBillingSystem"/>
						</attribute>
						<attribute name="LastMileRTC_CMS">
							<xsl:value-of select="/submitOrderRequest/CRMOrderId"/>
						</attribute>
						<attribute name="OrderCSRFilial">
							<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMOriginatorLevelR12"/>
						</attribute>
						<attribute name="regionalFlag">
							<xsl:choose>
								<!--/submitOrderRequest/OrderOMSParam/regionalFlag-->
								<xsl:when test="/submitOrderRequest/OrderOMSParam/regionalFlag='1' ">true</xsl:when>
								<xsl:otherwise>false</xsl:otherwise>
							</xsl:choose>
						</attribute>
					</orderAttributes>
					<orderDate>
						<xsl:value-of select="CRMCreateDate"/>
					</orderDate>
					<!--		<orderRequestedStartDate>2001-12-17T09:30:47Z</orderRequestedStartDate>-->
					<orderRequiredDate>
						<xsl:value-of select="TechSolLifetime"/>
					</orderRequiredDate>
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
					<orderParties>
						<orderParty>
							<partyRole>KZ</partyRole>
							<partyId>
								<!--<xsl:value-of select="OrderOMSId"/>-->
								<xsl:value-of select="/submitOrderRequest/kzOrderId"/>
							</partyId>
							<partyAttributes>
								<attribute name="stage">
									<xsl:value-of select="SYSOrderStage"/>
								</attribute>
								<attribute name="reason">
									<xsl:value-of select="CancelReason"/>
								</attribute>
								<attribute name="comment">
									<xsl:value-of select="HrmsSYSOrderComment"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>WORKER</partyRole>
							<partyId>
								<xsl:value-of select="StatusSYSUsrName"/>
							</partyId>
							<partyName>
								<xsl:value-of select="StatusSYSUsrName"/>
							</partyName>
							<partyAttributes>
								<attribute name="email">
									<xsl:value-of select="StatusSYSUsrEMail"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>SALES</partyRole>
							<partyId>
								<xsl:value-of select="OrderOMSParam/CRMOrderCSR"/>
							</partyId>
							<partyName>
								<xsl:value-of select="OrderOMSParam/CRMOrderCSR"/>
							</partyName>
						</orderParty>
						<orderParty>
							<partyRole>SOLUTION</partyRole>
							<partyId>
								<xsl:value-of select="OrderOMSId"/>
							</partyId>
							<partyAttributes>
								<attribute name="projectId">
									<xsl:value-of select="ProjectSolution"/>
								</attribute>
								<attribute name="technology">
									<xsl:value-of select="/submitOrderRequest/ConnectTechnology"/>
								</attribute>
								<attribute name="connectionType">
									<xsl:if test="/submitOrderRequest/TVready=''">OffNet</xsl:if>
									<xsl:if test="/submitOrderRequest/TVready!=''">OnNet</xsl:if>
								</attribute>
								<attribute name="solutionLifetime">
									<xsl:value-of select="TechSolLifetime"/>
								</attribute>
								<attribute name="implementationPeriod">
									<xsl:value-of select="ImplPeriod"/>
								</attribute>
								<attribute name="approvalDetailing">
									<xsl:value-of select="ApprovalDetailing"/>
								</attribute>
								<attribute name="UE">RUR</attribute>
								<!-- константа -->
								<attribute name="VAT">без НДС</attribute>
								<attribute name="buildProjectCost">
									<xsl:value-of select="ProjectCost"/>
								</attribute>
								<attribute name="installationCost">
									<xsl:value-of select="SMRCost"/>
								</attribute>
								<attribute name="equipmentCost">
									<xsl:value-of select="EquipmentCost"/>
								</attribute>
								<attribute name="equipmentName">
									<xsl:value-of select="EquipmentName"/>
								</attribute>
								<attribute name="inCanalization">
									<xsl:value-of select="InCanalization"/>
								</attribute>
								<attribute name="airCable">
									<xsl:value-of select="AirCable"/>
								</attribute>
								<attribute name="groundCable">
									<xsl:value-of select="GroundCable"/>
								</attribute>
								<attribute name="needHole">
									<xsl:if test="BuildCanalization='0'">false</xsl:if>
									<xsl:if test="BuildCanalization!='0'">true</xsl:if>
								</attribute>
								<attribute name="buildCanalization">
									<xsl:value-of select="BuildCanalization"/>
								</attribute>
								<attribute name="fldHrmsExtraPaysMethod">
									<xsl:value-of select="WorkMethod"/>
								</attribute>
								<attribute name="fldHrmsExtraPaysExecutor">
									<xsl:value-of select="Contractor"/>
								</attribute>
								<attribute name="buildingState">
									<xsl:value-of select="OrderOMSPTV/buildingState"/>
								</attribute>
								<attribute name="point1Name">
									<xsl:value-of select="Point1Name"/>
								</attribute>
								<attribute name="point1Address">
									<xsl:value-of select="Point1Address"/>
								</attribute>
								<attribute name="point1Interface">
									<xsl:value-of select="Point1Interface"/>
								</attribute>
								<attribute name="point1Equipment">
									<xsl:value-of select="Point1Equipment"/>
								</attribute>
								<attribute name="point3Name">
									<xsl:value-of select="Point3Name"/>
								</attribute>
								<attribute name="point3Address">
									<xsl:value-of select="Point3Address"/>
								</attribute>
								<attribute name="point3Interface">
									<xsl:value-of select="Point3Interface"/>
								</attribute>
								<attribute name="point3Equipment">
									<xsl:value-of select="Point3Equipment"/>
								</attribute>
								<attribute name="point2LInchOrgMethod">
									<xsl:value-of select="Point2LInchOrgMethod"/>
								</attribute>
								<attribute name="lMCrossing">
									<xsl:value-of select="fldLMCrossing"/>
								</attribute>
								<attribute name="lMOrgLevel">
									<xsl:value-of select="fldLMOrgLevel"/>
								</attribute>
								<attribute name="networkPath">
									<xsl:value-of select="fldNetworkPath"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<xsl:variable name="CustomerSegment" select="/submitOrderRequest/OrderOMSParam/CRMPromotionSegmentName"/>
							<xsl:variable name="CustomerMacroSegment" select="/submitOrderRequest/OrderOMSParam/CRMPromotionType"/>
							<xsl:variable name="CustomerSegmentMRFSZ">
								<xsl:choose>
									<xsl:when test="$CustomerSegment = 'Средние и малые предприятия' ">
										<xsl:value-of select=" 'СМП' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Крупные (К) Спецпользователи' ">
										<xsl:value-of select=" 'Спецпользователи' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Крупные госзаказчики (КГЗ)' ">
										<xsl:value-of select=" 'КГЗ' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Малые и средние госзаказчики (МСГЗ)' ">
										<xsl:value-of select=" 'МСГЗ' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Крупные коммерческие клиенты' ">
										<xsl:value-of select=" '3К' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Крупные бюджетные клиенты' ">
										<xsl:value-of select=" '3К' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Крупные коммерческие клиенты 3К В2В' ">
										<xsl:value-of select=" '3К' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Крупные бюджетные клиенты 3К B2G' ">
										<xsl:value-of select=" '3К' "/>
									</xsl:when>
									<xsl:when test="$CustomerSegment = 'Клиенты федерального уровня (ККФУ)' ">
										<xsl:if test="$CustomerMacroSegment = 'B2B'">
											<xsl:value-of select=" 'ККФУ' "/>
										</xsl:if>
										<xsl:if test="$CustomerMacroSegment = 'B2G'">
											<xsl:value-of select=" 'КГЗ' "/>
										</xsl:if>
										<xsl:if test=" $CustomerMacroSegment != 'B2B' and $CustomerMacroSegment != 'B2G' ">
											<xsl:value-of select=" 'ККФУ' "/>
										</xsl:if>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="$CustomerSegment"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<partyRole>CLIENT</partyRole>
							<partyId>
								<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_ID"/>
							</partyId>
							<partyName>
								<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_NAME"/>
							</partyName>
							<partyAttributes>
								<attribute name="CustomerKPP">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_OKONH"/>
								</attribute>
								<attribute name="CustomerTaxId">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_INN"/>
								</attribute>
								<attribute name="CustomerMacroSegment">
									<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMPromotionType"/>
								</attribute>
								<attribute name="CustomerSegment">
									<!--<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMPromotionSegmentName"/>-->
									<xsl:value-of select="$CustomerSegmentMRFSZ"/>
								</attribute>
								<attribute name="CustomerContactsName">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_NAME2"/>
								</attribute>
								<attribute name="CustomerPhone">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_CONTACT_PHONE"/>
								</attribute>
								<attribute name="CustomerEmail">
									<xsl:value-of select="/submitOrderRequest/CRMCustomer/CUSTOM_CONTACT_EMAIL"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<!-- HE-12076:  для контактов со speceality должны передаваться, если есть в заявке-->
						<xsl:if test="/submitOrderRequest/OrderOMSContact/OrderContactPerson != ''">
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
									<attribute name="phone">
										<xsl:value-of select="/submitOrderRequest/OrderOMSContact/OrderContactPhone"/>
									</attribute>
									<attribute name="email">
										<xsl:value-of select="/submitOrderRequest/OrderOMSContact/OrderContactEmail"/>
									</attribute>
									<attribute name="speciality">CLIENTAGENT</attribute>
								</partyAttributes>
							</orderParty>
						</xsl:if>
						<xsl:if test="OrderOMSParam/CRMContactNameLocal != '' ">
							<orderParty>
								<partyRole>CONTACT</partyRole>
								<partyId>
									<xsl:value-of select="/submitOrderRequest/CRMOrderId"/>-CLIENTTECH</partyId>
								<partyName>
									<xsl:value-of select="OrderOMSParam/CRMContactNameLocal"/>
								</partyName>
								<partyAttributes>
									<attribute name="phone">
										<xsl:value-of select="OrderOMSParam/CRMContactPhoneLocal"/>
									</attribute>
									<attribute name="speciality">CLIENTTECH</attribute>
								</partyAttributes>
							</orderParty>
						</xsl:if>
						<xsl:if test="not (/submitOrderRequest/OrderOMSSpecialities/PROJECT_SALES/fio = '' )">
							<orderParty>
								<partyRole>PROJECTSALES</partyRole>
								<partyId>
									<xsl:value-of select="/submitOrderRequest/CRMOrderId"/>-PROJECT_SALES</partyId>
								<partyName>
									<xsl:value-of select="/submitOrderRequest/OrderOMSSpecialities/PROJECT_SALES/fio"/>
								</partyName>
								<partyAttributes>
									<attribute name="phone">
										<xsl:value-of select="/submitOrderRequest/OrderOMSSpecialities/PROJECT_SALES/phone"/>
									</attribute>
									<attribute name="email">
										<xsl:value-of select="/submitOrderRequest/OrderOMSSpecialities/PROJECT_SALES/email"/>
									</attribute>
								</partyAttributes>
							</orderParty>
						</xsl:if>
						<xsl:if test="not (/submitOrderRequest/OrderOMSSpecialities/CLIENTEND/fio = '' )">
							<orderParty>
								<partyRole>CONTACT</partyRole>
								<partyId>
									<xsl:value-of select="/submitOrderRequest/CRMOrderId"/>-CLIENTEND</partyId>
								<partyName>
									<xsl:value-of select="/submitOrderRequest/OrderOMSSpecialities/CLIENTEND/fio"/>
								</partyName>
								<partyAttributes>
									<attribute name="phone">
										<xsl:value-of select="/submitOrderRequest/OrderOMSSpecialities/CLIENTEND/phone"/>
									</attribute>
									<attribute name="email">
										<xsl:value-of select="/submitOrderRequest/OrderOMSSpecialities/CLIENTEND/email"/>
									</attribute>
									<attribute name="speciality">CLIENTEND</attribute>
								</partyAttributes>
							</orderParty>
						</xsl:if>
					</orderParties>
					<xsl:for-each select="CRMRequestIdList">
						<orderItems>
							<xsl:for-each select="CRMRequest">
								<orderItem>
									<orderItemId>
										<xsl:value-of select="CSERVICE_ID"/>
									</orderItemId>
									<orderItemAction>
										<xsl:value-of select="orderItemAction"/>
									</orderItemAction>
									<orderItemCategory>CFS</orderItemCategory>
									<orderItemParentId/>
									<orderItemParentInstanceId/>
									<orderItemRequiredDate>
										<xsl:value-of select="SrvOMSParam/SRV_DT_START"/>
									</orderItemRequiredDate>
									<!--				<ServiceType>
				<xsl:value-of select="ServiceType"/></ServiceType>-->
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
									<xsl:if test="ServiceType='NETWORK'">
										<orderItemLocation>
											<locationId>
												<xsl:value-of select="/submitOrderRequest/SYSOrderServicesAddr/GID"/>
											</locationId>
											<locationCategory>STRICT</locationCategory>
											<locationRegister>GID</locationRegister>
											<locationAttributes>
												<attribute name="locationPremises"/>
												<xsl:value-of select="/submitOrderRequest/SYSOrderServicesAddr/ExtOffice"/>
											</locationAttributes>
										</orderItemLocation>
										<xsl:if test="SrvOMSParam/SRV_SLTU_RESERVE_NUM !=''">
											<orderItemParties>
												<orderParty>
													<partyRole>RESERVATION</partyRole>
													<partyId>
														<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE"/>
													</partyId>
													<partyName>ResourceBooking</partyName>
													<partyAttributes>
														<attribute name="reservationNumber">
															<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE_NUM"/>
														</attribute>
														<attribute name="reservationId">
															<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE"/>
														</attribute>
													</partyAttributes>
												</orderParty>
											</orderItemParties>
										</xsl:if>
										<!-- test="SrvOMSParam/SRV_SLTU_RESERVE_NUM !=''"-->
									</xsl:if>
									<orderItemComments/>
									<!--<orderItemReservationId/>-->
									<orderItemAttributes>
										<attribute name="ServiceSpeedValue">
											<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceSpeed"/>
											<!--Скорость сервиса, кбит/c-->
										</attribute>
										<attribute name="ServiceSpeedMeasure">
											<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceSpeed_SCALE"/>
											<!--Единицы измерения скорости-->
										</attribute>
										<attribute name="access_interface">
											<xsl:value-of select="SrvOMSParam/SRV_CMS_fldPoint2Interface"/>
											<!--Интерфейс клиента-->
										</attribute>
										<xsl:if test="ServiceType='NETWORK'">
											<!-- technology lineId , serviceItemId нужно выводить в XML, только для услуги ServiceType='NETWORK' -->
											<attribute name="accountNumber">
												<xsl:value-of select="SrvOMSParam/SRV_SLTU_ACCOUNTNUMBER"/>
											</attribute>
											<attribute name="lineId">
												<xsl:value-of select="SrvOMSParam/SRV_LINE_NUMBER"/>
											</attribute>
											<xsl:if test="(not(SrvOMSParam/SRV_SLTU_SERVICE_ID)) or SrvOMSParam/SRV_SLTU_SERVICE_ID=''">
												<attribute name="serviceItemId">000000</attribute>
											</xsl:if>
											<xsl:if test="SrvOMSParam/SRV_SLTU_SERVICE_ID!=''">
												<attribute name="serviceItemId">
													<xsl:value-of select="SrvOMSParam/SRV_SLTU_SERVICE_ID"/>
												</attribute>
											</xsl:if>
											<attribute name="technology">
												<xsl:value-of select="/submitOrderRequest/ConnectTechnology"/>
											</attribute>
										</xsl:if>
										<xsl:if test="ServiceType='IP_address'">
											<attribute name="service_qty">1</attribute>
										</xsl:if>
										<xsl:if test="ServiceType='cfs_vpn_node'">
											<attribute name="vpn_node_name">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_NAME"/>
											</attribute>
											<xsl:if test="(not(SrvOMSParam/SRV_VPN_NODE_TYPE)) or SrvOMSParam/SRV_VPN_NODE_TYPE=''">
												<attribute name="vpn_node_type">P2P</attribute>
											</xsl:if>
											<attribute name="service_demarcation_point">
												<xsl:value-of select="/submitOrderRequest/OrderOMSParam/ServiceDemarcPoint"/>
											</attribute>
											<xsl:if test="SrvOMSParam/SRV_VPN_NODE_TYPE!=''">
												<attribute name="vpn_node_type">
													<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_TYPE"/>
												</attribute>
											</xsl:if>
											<attribute name="routing_mode">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PKT_ROUTING_TYPE"/>
											</attribute>
											<attribute name="vpn_qos">
												<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceQoS"/>
											</attribute>
											<attribute name="vpn_node_cos">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_COS"/>
											</attribute>
											<attribute name="primary_or_redoundant">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_ROLE"/>
											</attribute>
											<attribute name="if_ip">
												<!--	 HE-11987																					
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
											-->
												<xsl:choose>
													<xsl:when test="SrvOMSParam/SRV_VPN_IF_IP">
														<xsl:choose>
															<xsl:when test="SrvOMSParam/SRV_VPN_IF_IP !=''">
																<xsl:value-of select="SrvOMSParam/SRV_VPN_IF_IP"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:when>
													<xsl:otherwise>
														<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
													</xsl:otherwise>
												</xsl:choose>
											</attribute>
											<attribute name="ce_ip">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_CEIP"/>
											</attribute>
											<attribute name="external_as">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_EXT_AS"/>
											</attribute>
											<attribute name="qinq">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_QINQ"/>
											</attribute>
											<attribute name="ip_prefix">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PREFIX_IP"/>
											</attribute>
											<attribute name="mtu">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_MTU"/>
											</attribute>
											<!--HE-12077-->
											<attribute name="customerVLANs" restriction="dynamic">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_VLANS"/>
											</attribute>
											<attribute name="IPSubnetCE" restriction="dynamic">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
											</attribute>
											<attribute name="lmOrgLevel" restriction="dynamic">
												<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CMS_LMOrgLevel"/>
											</attribute>
										</xsl:if>
										<xsl:if test="ServiceType='LastMileRTC_CMS'">
											<!-- accessPortType , relatedOrderId только для услуги ServiceType='LastMileRTC_CMS' -->
											<attribute name="accessPortType">
												<xsl:value-of select="SrvOMSParam/SRV_ACCESS_PORTTYPE"/>
											</attribute>
											<attribute name="relatedOrderId">
												<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMrelatedOrderId"/>
											</attribute>
										</xsl:if>
										<xsl:if test="ServiceType='VPN'">
											<attribute name="vpn_type">L3_VPN</attribute>
											<attribute name="sub_net">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
												<!-- берем из [SRV_VPN_SUBNET] => 10.0.0.0 -->
											</attribute>
											<attribute name="vpn_node_name">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_NAME"/>
											</attribute>
											<xsl:if test="(not(SrvOMSParam/SRV_VPN_NODE_TYPE)) or SrvOMSParam/SRV_VPN_NODE_TYPE=''">
												<attribute name="vpn_node_type">P2P</attribute>
											</xsl:if>
											<xsl:if test="SrvOMSParam/SRV_VPN_NODE_TYPE!=''">
												<attribute name="vpn_node_type">
													<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_TYPE"/>
												</attribute>
											</xsl:if>
											<attribute name="cpe_mode">Routing</attribute>
											<!-- по умолчанию Routing -->
											<attribute name="routing_mode">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PKT_ROUTING_TYPE"/>
											</attribute>
											<attribute name="vpn_qos">
												<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceQoS"/>
											</attribute>
											<attribute name="vpn_node_cos">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_COS"/>
											</attribute>
											<attribute name="primary_or_redoundant">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_ROLE"/>
											</attribute>
											<attribute name="if_ip">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
											</attribute>
											<attribute name="ce_ip">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_CEIP"/>
											</attribute>
											<attribute name="external_as">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_EXT_AS"/>
											</attribute>
											<attribute name="qinq">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_QINQ"/>
											</attribute>
											<attribute name="ip_prefix">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PREFIX_IP"/>
											</attribute>
											<attribute name="mtu">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_MTU"/>
											</attribute>
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Нет'">
												<attribute name="as_id">12389</attribute>
												<!-- если [SRV_VPN_LOCAL_VPN] => Нет, то as_id = 12389 -->
											</xsl:if>
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Да'">
												<attribute name="as_id">0</attribute>
												<!-- если [SRV_VPN_LOCAL_VPN] => Да, то as_id = 0 -->
											</xsl:if>
										</xsl:if>
										<xsl:if test="ServiceType='VPN_L2'">
											<attribute name="vpn_type">L2_VPN</attribute>
											<attribute name="sub_net">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
												<!-- берем из [SRV_VPN_SUBNET] => 10.0.0.0 -->
											</attribute>
											<attribute name="cpe_mode">Routing</attribute>
											<!-- по умолчанию Routing -->
											<attribute name="vpn_node_name">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_NAME"/>
											</attribute>
											<xsl:if test="(not(SrvOMSParam/SRV_VPN_NODE_TYPE)) or SrvOMSParam/SRV_VPN_NODE_TYPE=''">
												<attribute name="vpn_node_type">P2P</attribute>
											</xsl:if>
											<xsl:if test="SrvOMSParam/SRV_VPN_NODE_TYPE!=''">
												<attribute name="vpn_node_type">
													<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_TYPE"/>
												</attribute>
											</xsl:if>
											<attribute name="routing_mode">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PKT_ROUTING_TYPE"/>
											</attribute>
											<attribute name="vpn_qos">
												<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceQoS"/>
											</attribute>
											<attribute name="vpn_node_cos">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_COS"/>
											</attribute>
											<attribute name="primary_or_redoundant">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_ROLE"/>
											</attribute>
											<attribute name="if_ip">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
											</attribute>
											<attribute name="ce_ip">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_CEIP"/>
											</attribute>
											<attribute name="external_as">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_EXT_AS"/>
											</attribute>
											<attribute name="qinq">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_QINQ"/>
											</attribute>
											<attribute name="ip_prefix">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PREFIX_IP"/>
											</attribute>
											<attribute name="mtu">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_MTU"/>
											</attribute>
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Нет'">
												<attribute name="as_id">12389</attribute>
												<!-- если [SRV_VPN_LOCAL_VPN] => Нет, то as_id = 12389 -->
											</xsl:if>
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Да'">
												<attribute name="as_id">0</attribute>
												<!-- если [SRV_VPN_LOCAL_VPN] => Да, то as_id = 0 -->
											</xsl:if>
										</xsl:if>
										<xsl:if test="ServiceType='VPLS point'">
											<attribute name="vpn_type">VPLS</attribute>
											<attribute name="sub_net">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
												<!-- берем из [SRV_VPN_SUBNET] => 10.0.0.0 -->
											</attribute>
											<attribute name="cpe_mode">Routing</attribute>
											<!-- по умолчанию Routing -->
											<attribute name="vpn_node_name">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_NAME"/>
											</attribute>
											<xsl:if test="(not(SrvOMSParam/SRV_VPN_NODE_TYPE)) or SrvOMSParam/SRV_VPN_NODE_TYPE=''">
												<attribute name="vpn_node_type">P2P</attribute>
											</xsl:if>
											<xsl:if test="SrvOMSParam/SRV_VPN_NODE_TYPE!=''">
												<attribute name="vpn_node_type">
													<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_TYPE"/>
												</attribute>
											</xsl:if>
											<attribute name="routing_mode">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PKT_ROUTING_TYPE"/>
											</attribute>
											<attribute name="vpn_qos">
												<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceQoS"/>
											</attribute>
											<attribute name="vpn_node_cos">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_COS"/>
											</attribute>
											<attribute name="primary_or_redoundant">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NODE_ROLE"/>
											</attribute>
											<attribute name="if_ip">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_SUBNET"/>
											</attribute>
											<attribute name="ce_ip">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_CEIP"/>
											</attribute>
											<attribute name="external_as">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_EXT_AS"/>
											</attribute>
											<attribute name="qinq">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_QINQ"/>
											</attribute>
											<attribute name="ip_prefix">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PREFIX_IP"/>
											</attribute>
											<attribute name="mtu">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_MTU"/>
											</attribute>
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Нет'">
												<attribute name="as_id">12389</attribute>
												<!-- если [SRV_VPN_LOCAL_VPN] => Нет, то as_id = 12389 -->
											</xsl:if>
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Да'">
												<attribute name="as_id">0</attribute>
												<!-- если [SRV_VPN_LOCAL_VPN] => Да, то as_id = 0 -->
											</xsl:if>
										</xsl:if>
										<xsl:if test="ServiceType='cfs_vpn'">
											<attribute name="vpn_type">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_TYPE"/>
												<!--  Тип VPN берем из [SRV_VPN_TYPE] => VPLS point -->
											</attribute>
											<attribute name="vpn_qos">
												<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceQoS"/>
												<!-- Класс обслуживания(QoS) берем из [SRV_CMS_ServiceQoS] => N -->
											</attribute>
											<attribute name="vpn_topology">
												<xsl:value-of select="SrvOMSParam/SRV_CMS_ServiceTopology"/>
												<!-- Топология берем из [SRV_CMS_ServiceTopology] => FM VPN (full mesh VPN) -->
											</attribute>
											<attribute name="vpn_id">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_ID"/>
												<!-- ID VPN сети берем из [SRV_VPN_ID] => ID VPN сети -->
											</attribute>
											<attribute name="vpn_name">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_NAME"/>
												<!-- Имя VPN сети берем из [SRV_VPN_NAME] => Имя VPN сети-->
											</attribute>
											<attribute name="pe_as">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_AS"/>
											</attribute>
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Нет'">
												<attribute name="isLocal">false</attribute>
											</xsl:if>
											<!-- если [SRV_VPN_LOCAL_VPN] => Нет, то as_id = 12389 -->
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='Да'">
												<attribute name="isLocal">true</attribute>
											</xsl:if>
											<!-- если [SRV_VPN_LOCAL_VPN] => Да, то as_id = 0 -->
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='false'">
												<attribute name="isLocal">false</attribute>
											</xsl:if>
											<!-- если [SRV_VPN_LOCAL_VPN] => Нет, то as_id = 12389 -->
											<xsl:if test="SrvOMSParam/SRV_VPN_LOCAL_VPN='true'">
												<attribute name="isLocal">true</attribute>
											</xsl:if>
											<!-- если [SRV_VPN_LOCAL_VPN] => Да, то as_id = 0 -->
										</xsl:if>
										<xsl:if test="ServiceType='NET'">
											<!--cfs_internet-->
											<attribute name="service_bandwidth_type">
												<xsl:value-of select="/submitOrderRequest/OrderOMSParam/ServiceBandwidthType"/>
												<!--Полоса пропускания-->
											</attribute>
											<attribute name="service_demarcation_point">
												<xsl:value-of select="/submitOrderRequest/OrderOMSParam/ServiceDemarcPoint"/>
												<!--Граница зон ответственности-->
											</attribute>
											<attribute name="primary_or_redundant">
												<xsl:value-of select="/submitOrderRequest/OrderOMSParam/CRMChannelType"/>
												<!--Тип канала-->
											</attribute>
											<attribute name="routing_mode">
												<xsl:value-of select="SrvOMSParam/SRV_VPN_PKT_ROUTING_TYPE"/>
												<!--Способ маршрутизации-->
											</attribute>
										</xsl:if>
									</orderItemAttributes>
									<!--				<orderItemBillingInfo>text</orderItemBillingInfo>
				<orderItemAppointmentId>String</orderItemAppointmentId>-->
								</orderItem>
							</xsl:for-each>
						</orderItems>
					</xsl:for-each>
					<!--		<orderAppointmentId>String</orderAppointmentId>-->
				</order>
			</xsl:for-each>
		</tns:submitOrderRequest>
	</xsl:template>
</xsl:stylesheet>