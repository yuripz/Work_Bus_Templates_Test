<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:orderStatusNotification xmlns:tns="http://oms.rt.ru/">
			<originator>HRMS</originator>
			<receiver>
				<xsl:choose>
					<xsl:when test="/CRMTaskStatusUpdate/OrderOMSParam/callbackEndpoint != '' ">
						<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSParam/callbackEndpoint"/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="/CRMTaskStatusUpdate/MsgDirection_Cod"/>
					</xsl:otherwise>
				</xsl:choose>
			</receiver>
			<xsl:if test="CRMTaskStatusUpdate/CRMRequestStatus='FAILED'">
				<orderResult>
					<orderResultCode>
						<xsl:if test="/CRMTaskStatusUpdate/CancelReason!=''">
							<xsl:value-of select="/CRMTaskStatusUpdate/CancelReason"/>: <xsl:value-of select="/CRMTaskStatusUpdate/CancelReasonName"/>
						</xsl:if>
						<xsl:if test="/CRMTaskStatusUpdate/CancelReason=''">0</xsl:if>
					</orderResultCode>
					<xsl:if test="CRMTaskStatusUpdate/CRMRequestStatus!='' and /CRMTaskStatusUpdate/CancelReason!='' and /CRMTaskStatusUpdate/GoToCommentOrder !='' ">
						<orderResultText>
							<xsl:value-of select="/CRMTaskStatusUpdate/GoToCommentOrder"/>
						</orderResultText>
					</xsl:if>
				</orderResult>
			</xsl:if>
			<xsl:if test="CRMTaskStatusUpdate/CRMRequestStatus!='FAILED'">
				<orderResult>
					<orderResultCode>0</orderResultCode>
				</orderResult>
			</xsl:if>
			<xsl:if test="CRMTaskStatusUpdate/QueueId!=''">
				<requestId>
					<xsl:value-of select="CRMTaskStatusUpdate/QueueId"/>
				</requestId>
			</xsl:if>
			<xsl:if test="CRMTaskStatusUpdate/QueueId=''">
				<requestId>0-0-0-0</requestId>
			</xsl:if>
			<order>
				<xsl:for-each select="CRMTaskStatusUpdate">
					<orderId>
						<xsl:value-of select="CRMOrderId"/>
					</orderId>
					<orderOMSId>
						<xsl:value-of select="OrderOMSId"/>
					</orderOMSId>
					<xsl:if test="/CRMTaskStatusUpdate/OrderOMSParam/orderStartDate!=''">
						<orderStartDate>
							<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSParam/orderStartDate"/>
						</orderStartDate>
					</xsl:if>
					<xsl:if test="/CRMTaskStatusUpdate/OrderOMSParam/orderExpectedCompletionDate!=''">
						<orderExpectedCompletionDate>
							<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSParam/orderExpectedCompletionDate"/>
						</orderExpectedCompletionDate>
					</xsl:if>
					<xsl:if test="/CRMTaskStatusUpdate/OrderOMSParam/orderCompletionDate!=''">
						<orderCompletionDate>
							<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSParam/orderCompletionDate"/>
						</orderCompletionDate>
					</xsl:if>
					<xsl:variable name="orderStateF" select="CRMRequestStatus"/>
					<xsl:choose>
						<xsl:when test="$orderStateF= 'CANCEL' ">
							<orderState>CANCELLED</orderState>
						</xsl:when>
						<xsl:when test="$orderStateF= 'CANCELLED' ">
							<orderState>CANCELLED</orderState>
						</xsl:when>
						<xsl:when test="$orderStateF= 'INPROGRESS' ">
							<orderState>INPROGRESS</orderState>
						</xsl:when>
						<xsl:when test="$orderStateF= 'FAILED' ">
							<orderState>FAILED</orderState>
						</xsl:when>
						<xsl:when test="$orderStateF= 'COMPLETE' ">
							<orderState>COMPLETED</orderState>
						</xsl:when>
						<xsl:when test="$orderStateF= 'COMPLETED' ">
							<orderState>COMPLETED</orderState>
						</xsl:when>
						<xsl:otherwise>
							<orderState>INPROGRESS</orderState>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:if test="CRMRequestStatus!='CANCEL' and CRMRequestStatus!='FAILED' and CRMRequestStatus!= 'COMPLETE' and CRMnotificationStatus=''">
						<orderNotifications>
							<orderNotification>
								<notificationTimestamp>
									<xsl:value-of select="ChangeStatusDate"/>
								</notificationTimestamp>
								<!--<notificationStatus>MANUAL</notificationStatus>-->
								<xsl:if test="/CRMTaskStatusUpdate/CRMnotificationStatus!=''">
									<orderCompletionDate>
										<xsl:value-of select="/CRMTaskStatusUpdate/CRMnotificationStatus"/>
									</orderCompletionDate>
								</xsl:if>
								<notificationText>
									<xsl:value-of select="SYSOrderStage"/>
								</notificationText>
							</orderNotification>
						</orderNotifications>
					</xsl:if>
					<xsl:if test="CRMnotificationStatus!=''">
						<orderNotifications>
							<orderNotification>
								<notificationStatus>
									<xsl:value-of select="CRMnotificationStatus"/>
								</notificationStatus>
							</orderNotification>
						</orderNotifications>
					</xsl:if>
					<xsl:if test="GoToCommentOrder and  GoToCommentOrder!=''">
						<orderComments>
							<Comment>
								<text>
									<xsl:value-of select="GoToCommentOrder"/>
								</text>
							</Comment>
						</orderComments>
					</xsl:if>
					<orderParties>
						<orderParty>
							<partyRole>KZ</partyRole>
							<partyId>
								<xsl:value-of select="OrderOMSId"/>
							</partyId>
							<partyAttributes>
								<attribute name="stage">
									<xsl:value-of select="SYSOrderStage"/>
								</attribute>
								<xsl:if test="CRMRequestStatus!='FAILED'">
									<attribute name="reason">
										<xsl:value-of select="CancelReason"/>
									</attribute>
								</xsl:if>
								<xsl:if test="CRMRequestStatus='FAILED'">
									<attribute name="reason">
										<xsl:value-of select="CancelReason"/>: <xsl:value-of select="CancelReasonName"/>
									</attribute>
								</xsl:if>
								<attribute name="comment">
									<xsl:value-of select="GoToCommentOrder"/>
								</attribute>
								<attribute name="url">
									<xsl:value-of select="SYSOrderURL"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>KP</partyRole>
							<partyId>
								<xsl:value-of select="/CRMTaskStatusUpdate/SYSProjectAnalytics/SYSProjectNum"/>
							</partyId>
						</orderParty>
						<!--	<xsl:if test="not(CRMnotificationStatus= 'SURVEY_REQUIRED' or CRMnotificationStatus='SLA_CALCULATED')">
							<orderParty>
								<partyRole>WORKER</partyRole>
								<partyId>
									<xsl:value-of select="UsrLogin"/>
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
						</xsl:if> -->
						<!--	<xsl:if test="(not(CRMnotificationStatus= 'SURVEY_REQUIRED')) and (not(/CRMTaskStatusUpdate/Worker))"> -->
						<xsl:if test="(/CRMTaskStatusUpdate/Worker/partyId!='') and not(CRMnotificationStatus= 'SURVEY_REQUIRED')">
							<orderParty>
								<partyRole>WORKER</partyRole>
								<partyId>
									<xsl:value-of select="/CRMTaskStatusUpdate/Worker/partyId"/>
								</partyId>
								<partyName>
									<xsl:value-of select="/CRMTaskStatusUpdate/Worker/fio"/>
								</partyName>
								<partyAttributes>
									<attribute name="email">
										<xsl:value-of select="/CRMTaskStatusUpdate/Worker/email"/>
									</attribute>
									<attribute name="phone">
										<xsl:value-of select="/CRMTaskStatusUpdate/Worker/phone"/>
									</attribute>
								</partyAttributes>
							</orderParty>
						</xsl:if>
						<xsl:if test="(/CRMTaskStatusUpdate/CRMRequestStatus= 'COMPLETE') and not(/CRMTaskStatusUpdate/Worker/partyId!='')">
							<orderParty>
								<partyRole>WORKER</partyRole>
								<partyId>daemon</partyId>
								<partyName>Система</partyName>
								<partyAttributes>
									<attribute name="email">daemon@noemail</attribute>
									<attribute name="phone"/>
								</partyAttributes>
							</orderParty>
						</xsl:if>
						<xsl:if test="/CRMTaskStatusUpdate/PTVResult='1'">
							<!--несколько вариантов solution для БО -->
							<xsl:for-each select="LastPTVInfo">
								<xsl:for-each select="LastPTVCap">
									<xsl:if test="not(CRMnotificationStatus= 'MANUAL' or CRMnotificationStatus= 'SURVEY_REQUIRED' or CRMnotificationStatus='SLA_CALCULATED')">
										<orderParty>
											<partyRole>SOLUTION</partyRole>
											<partyId>
												<xsl:value-of select="OPPTVCAP_ID"/>
											</partyId>
											<partyAttributes>
												<xsl:if test="IS_CURRENT='1'">
													<attribute name="isMain">true</attribute>
												</xsl:if>
												<attribute name="connectionType">
													<xsl:value-of select="CONNECTION_TYPE"/>
												</attribute>
												<attribute name="projectId">
													<xsl:value-of select="/CRMTaskStatusUpdate/ProjectSolution"/>
												</attribute>
												<xsl:if test="OPPTVCAP_TECHNOLOGY!='' ">
													<attribute name="technology">
														<xsl:value-of select="OPPTVCAP_TECHNOLOGY"/>
													</attribute>
												</xsl:if>
												<attribute name="solutionLifetime">
													<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSParam/TECH_PROPOSAL_EXPIRE_atom"/>
												</attribute>
												<attribute name="implementationPeriod">
													<xsl:value-of select="DEADLINE_PERIOD"/>
												</attribute>
												<attribute name="approvalDetailing">
													<xsl:value-of select="/CRMTaskStatusUpdate/ApprovalDetailing"/>
												</attribute>
												<attribute name="UE">RUR</attribute>
												<attribute name="VAT">без НДС</attribute>
												<attribute name="buildProjectCost">
													<xsl:value-of select="PIR_SUM"/>
												</attribute>
												<attribute name="buildCost">
													<xsl:value-of select="SMR_SUM"/>
												</attribute>
												<attribute name="otherCost">
													<xsl:value-of select="OtherCost"/>
												</attribute>
												<attribute name="equipmentCost">
													<xsl:value-of select="EQUIP_SUM"/>
												</attribute>
												<attribute name="needHole">
													<xsl:if test="OPPTVCAP_DUCT_LENGTH=''">false</xsl:if>
													<xsl:if test="OPPTVCAP_DUCT_LENGTH!=''">true</xsl:if>
												</attribute>
												<attribute name="capability">
													<xsl:if test="OPPTVCAP_AVAIL='1'">true</xsl:if>
													<xsl:if test="OPPTVCAP_AVAIL!='1'">false</xsl:if>
												</attribute>
												<attribute name="buildingState">
													<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSPTV/buildingState"/>
												</attribute>
												<attribute name="specialNotes">
													<xsl:value-of select="/CRMTaskStatusUpdate/SpecialNotes"/>
												</attribute>
												<attribute name="installationCost">
													<xsl:value-of select="/CRMTaskStatusUpdate/OpexInstallCost"/>
												</attribute>
												<xsl:if test="CONNECTION_TYPE = 'LightNet'">
													<attribute name="totalOptionsLightNet">
														<xsl:value-of select="totalOptionsLightNet"/>
													</attribute>
													<attribute name="minimalLengthLightNet">
														<xsl:value-of select="minimalLengthLightNet"/>
													</attribute>
												</xsl:if>
												<attribute name="equipmentList">
													<xsl:for-each select="eq">
														<equipment>
															<id>
																<xsl:value-of select="EQ_ID"/>
															</id>
															<name>
																<xsl:value-of select="EQ_NAME"/>
															</name>
															<typeName>
																<xsl:value-of select="EQ_TYPENAME"/>
															</typeName>
															<category>
																<xsl:value-of select="EQ_CATEGORY"/>
															</category>
															<status>
																<xsl:value-of select="EQ_STATUS"/>
															</status>
															<centralOfficeId>
																<xsl:value-of select="EQ_CENTRALOFFICEID"/>
															</centralOfficeId>
															<availableCapacity>
																<xsl:value-of select="EQ_AVAILABLECAPACITY"/>
															</availableCapacity>
															<extraCapacity>
																<xsl:value-of select="EQ_EXTRACAPACITY"/>
															</extraCapacity>
															<hasProjectFiberLink>
																<xsl:value-of select="EQ_HASPROJECTFIBERLINK"/>
															</hasProjectFiberLink>
															<xsl:if test="EQ_COMISSIONDATE!= '' ">
																<commissioningDate>
																	<xsl:value-of select="EQ_COMISSIONDATE"/>
																</commissioningDate>
															</xsl:if>
															<resolution>
																<xsl:value-of select="EQ_RESOLUTION"/>
															</resolution>
															<xsl:if test="EQ_DESCRIPTION!= '' ">
																<description>
																	<xsl:value-of select="EQ_DESCRIPTION"/>
																</description>
															</xsl:if>
															<xsl:if test="EQ_NODEFUNCTIONS!= '' or EXCLUSIVECOMMENT!= '' or EQ_LOCATIONPREMISES!= ''">
																<attributes>
																	<xsl:if test="EQ_NODEFUNCTIONS!= '' ">
																		<attribute name="NodeFunctions">
																			<xsl:value-of select="EQ_NODEFUNCTIONS"/>
																		</attribute>
																	</xsl:if>
																	<xsl:if test="EXCLUSIVECOMMENT!= '' ">
																		<attribute name="ExclusiveUse">
																			<xsl:value-of select="EXCLUSIVECOMMENT"/>
																		</attribute>
																	</xsl:if>
																	<xsl:if test="EQ_LOCATIONPREMISES!= '' ">
																		<attribute name="LocationPremises">
																			<xsl:value-of select="EQ_LOCATIONPREMISES"/>
																		</attribute>
																	</xsl:if>
																</attributes>
															</xsl:if>
														</equipment>
													</xsl:for-each>
												</attribute>
											</partyAttributes>
										</orderParty>
									</xsl:if>
								</xsl:for-each>
								<!-- LastPTVCap -->
							</xsl:for-each>
							<!-- LastPTVInfo -->
						</xsl:if>
						<xsl:if test="(not(/CRMTaskStatusUpdate/PTVResult)) or /CRMTaskStatusUpdate/PTVResult='0'">
							<xsl:if test="not(CRMnotificationStatus= 'MANUAL' or CRMnotificationStatus= 'SURVEY_REQUIRED' or CRMnotificationStatus='SLA_CALCULATED')">
								<!-- Один вариант solution для ДО -->
								<orderParty>
									<partyRole>SOLUTION</partyRole>
									<partyId>
										<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSId"/>
									</partyId>
									<partyAttributes>
										<attribute name="isMain">true</attribute>
										<attribute name="connectionType">
											<xsl:if test="/CRMTaskStatusUpdate/TVready=''">OffNet</xsl:if>
											<xsl:if test="/CRMTaskStatusUpdate/TVready !='' and (not(/CRMTaskStatusUpdate/LightNet) or /CRMTaskStatusUpdate/LightNet ='' )">OnNet</xsl:if>
											<xsl:if test="/CRMTaskStatusUpdate/TVready !='' and /CRMTaskStatusUpdate/LightNet !=''">LightNet</xsl:if>
										</attribute>
										<!-- константа -->
										<attribute name="UE">RUR</attribute>
										<!-- константа -->
										<attribute name="VAT">без НДС</attribute>
										<attribute name="buildProjectCost">
											<xsl:value-of select="ProjectCost"/>
										</attribute>
										<attribute name="buildCost">
											<xsl:value-of select="SMRCost"/>
										</attribute>
										<attribute name="installationCost">
											<xsl:value-of select="/CRMTaskStatusUpdate/OpexInstallCost"/>
										</attribute>
										<attribute name="equipmentCost">
											<xsl:value-of select="EquipmentCost"/>
										</attribute>
										<attribute name="equipmentName">
											<xsl:value-of select="EquipmentName"/>
										</attribute>
										<attribute name="needHole">
											<xsl:if test="BuildCanalization='0'">false</xsl:if>
											<xsl:if test="BuildCanalization!='0'">true</xsl:if>
										</attribute>
										<attribute name="capability">
											<xsl:choose>
												<xsl:when test="/CRMTaskStatusUpdate/NoTB!=''">false</xsl:when>
												<xsl:otherwise>true</xsl:otherwise>
											</xsl:choose>
										</attribute>
										<xsl:if test="/CRMTaskStatusUpdate/OrderOMSParam/SubTechnology!='' or /CRMTaskStatusUpdate/Technology!='' ">
											<attribute name="technology">
												<xsl:if test="/CRMTaskStatusUpdate/OrderOMSParam/SubTechnology!=''">
													<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSParam/SubTechnology"/>
												</xsl:if>
												<xsl:if test="(not(/CRMTaskStatusUpdate/OrderOMSParam/SubTechnology)) or /CRMTaskStatusUpdate/OrderOMSParam/SubTechnology=''">
													<xsl:value-of select="/CRMTaskStatusUpdate/Technology"/>
												</xsl:if>
											</attribute>
										</xsl:if>
										<attribute name="solutionLifetime">
											<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSParam/TECH_PROPOSAL_EXPIRE_atom"/>
										</attribute>
										<attribute name="implementationPeriod">
											<xsl:value-of select="/CRMTaskStatusUpdate/ImplPeriod"/>
										</attribute>
										<attribute name="buildingState">
											<xsl:value-of select="/CRMTaskStatusUpdate/OrderOMSPTV/buildingState"/>
										</attribute>
										<attribute name="specialNotes">
											<xsl:value-of select="/CRMTaskStatusUpdate/SpecialNotes"/>
										</attribute>
										<xsl:if test="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_ID!='' and /CRMTaskStatusUpdate/ChosenPTVInfo/SOLUTION_ID=''">
											<attribute name="equipmentList">
												<equipment>
													<id>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_ID"/>
													</id>
													<name>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_NAME"/>
													</name>
													<typeName>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_TYPENAME"/>
													</typeName>
													<category>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_CATEGORY"/>
													</category>
													<status>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_STATUS"/>
													</status>
													<centralOfficeId>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_CENTRALOFFICEID"/>
													</centralOfficeId>
													<availableCapacity>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_AVAILABLECAPACITY"/>
													</availableCapacity>
													<extraCapacity>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_EXTRACAPACITY"/>
													</extraCapacity>
													<hasProjectFiberLink>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_HASPROJECTFIBERLINK"/>
													</hasProjectFiberLink>
													<xsl:if test="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_COMISSIONDATE!= '' ">
														<commissioningDate>
															<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_COMISSIONDATE"/>
														</commissioningDate>
													</xsl:if>
													<resolution>
														<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_RESOLUTION"/>
													</resolution>
													<xsl:if test="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_DESCRIPTION!= '' ">
														<description>
															<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_DESCRIPTION"/>
														</description>
													</xsl:if>
													<xsl:if test="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_NODEFUNCTIONS!= '' or /CRMTaskStatusUpdate/ChosenPTVInfo/EXCLUSIVECOMMENT!= '' or /CRMTaskStatusUpdate/ChosenPTVInfo/EQ_LOCATIONPREMISES!= '' ">
														<attributes>
															<xsl:if test="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_NODEFUNCTIONS!= '' ">
																<attribute name="NodeFunctions">
																	<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_NODEFUNCTIONS"/>
																</attribute>
															</xsl:if>
															<xsl:if test="/CRMTaskStatusUpdate/ChosenPTVInfo/EXCLUSIVECOMMENT!= '' ">
																<attribute name="ExclusiveUse">
																	<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EXCLUSIVECOMMENT"/>
																</attribute>
															</xsl:if>
															<xsl:if test="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_LOCATIONPREMISES!= '' ">
																<attribute name="LocationPremises">
																	<xsl:value-of select="/CRMTaskStatusUpdate/ChosenPTVInfo/EQ_LOCATIONPREMISES"/>
																</attribute>
															</xsl:if>
														</attributes>
													</xsl:if>
												</equipment>
											</attribute>
										</xsl:if>
										<xsl:if test="(not(/CRMTaskStatusUpdate/ChosenPTVInfo)) or /CRMTaskStatusUpdate/ChosenPTVInfo/EQ_ID=''">
											<attribute name="equipmentList"/>
										</xsl:if>
									</partyAttributes>
								</orderParty>
							</xsl:if>
						</xsl:if>
						<xsl:if test="/CRMTaskStatusUpdate/SiteAddressList">
							<xsl:for-each select="SiteAddressList">
								<xsl:for-each select="SiteAddress">
									<orderParty>
										<partyRole>SITE_ADDRESS</partyRole>
										<partyId>
											<xsl:value-of select="siteId"/>
										</partyId>
										<partyAttributes>
											<attribute name="siteName" status="CE" isChanged="false">
												<xsl:value-of select="siteName"/>
											</attribute>
											<attribute name="siteType" status="CE" isChanged="false">
												<xsl:value-of select="siteType"/>
											</attribute>
											<attribute name="siteStatus" status="CE" isChanged="false">
												<xsl:value-of select="siteStatus"/>
											</attribute>
											<attribute name="siteState" status="CE" isChanged="false">
												<xsl:value-of select="siteState"/>
											</attribute>
											<xsl:if test="localtionId != '' ">
												<attribute name="locationCategory" status="CE" isChanged="false">STRICT</attribute>
												<attribute name="locationRegister" status="CE" isChanged="false">GID</attribute>
												<attribute name="locationId" status="CE" isChanged="false">
													<xsl:value-of select="localtionId"/>
												</attribute>
											</xsl:if>
											<xsl:if test="localtionId = '' ">
												<attribute name="Longitude" status="CE" isChanged="false">
													<xsl:value-of select="Longitude"/>
												</attribute>
												<attribute name="Latitude" status="CE" isChanged="false">
													<xsl:value-of select="Latitude"/>
												</attribute>
											</xsl:if>
										</partyAttributes>
									</orderParty>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:if>
						<xsl:if test="Request_AttachmentList!=''">
							<!--по OSSDEV-1414 передаача блока отключена для FSOM-->
							<xsl:for-each select="RequestAttachmentList">
								<xsl:for-each select="RequestAttachment">
									<orderAttachment>
										<attachmentType>
											<xsl:value-of select="AttachmentTypeID"/>
										</attachmentType>
										<creationDate>
											<xsl:value-of select="AttachmentDate"/>
										</creationDate>
										<xsl:if test="AttachmentURL!=''">
											<URL>
												<xsl:value-of select="AttachmentURL"/>
											</URL>
										</xsl:if>
										<xsl:if test="AttachmentName!=''">
											<header>
												<xsl:value-of select="AttachmentName"/>
											</header>
										</xsl:if>
										<fileName>
											<xsl:value-of select="AttachmentFileName"/>
										</fileName>
										<fileExtension>
											<xsl:value-of select="AttachmentCategory"/>
										</fileExtension>
									</orderAttachment>
								</xsl:for-each>
								<!--RequestAttacment -->
							</xsl:for-each>
							<!--RequestAttacmentList -->
						</xsl:if>
					</orderParties>
					<xsl:if test="$orderStateF!= 'FAILED'">
						<orderItems>
							<xsl:for-each select="CRMRequestIdList">
								<xsl:for-each select="CRMRequest">
									<orderItem>
										<orderItemId>
											<xsl:value-of select="CRMRequestId"/>
										</orderItemId>
										<orderItemAction>
											<xsl:value-of select="ServiceCRM/CRM_ACTION"/>
										</orderItemAction>
										<xsl:choose>
											<xsl:when test="$orderStateF= 'CANCEL' ">
												<orderItemState>CANCELLED</orderItemState>
											</xsl:when>
											<xsl:when test="$orderStateF= 'CANCELLED' ">
												<orderItemState>CANCELLED</orderItemState>
											</xsl:when>
											<xsl:when test="$orderStateF= 'INPROGRESS' ">
												<orderItemState>INPROGRESS</orderItemState>
											</xsl:when>
											<xsl:when test="$orderStateF= 'COMPLETE' ">
												<orderItemState>COMPLETED</orderItemState>
											</xsl:when>
											<xsl:when test="$orderStateF= 'COMPLETED' ">
												<orderItemState>COMPLETED</orderItemState>
											</xsl:when>
											<xsl:otherwise>
												<orderItemState>INPROGRESS</orderItemState>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:if test="SrvOMSParam/SRV_LINE_NUMBER!=''  or SrvOMSParam/SRV_AUTH_METHOD!='' ">
											<orderItemAttributes>
												<xsl:if test="SrvOMSParam/SRV_LINE_NUMBER!=''">
													<attribute name="lineId">
														<xsl:value-of select="SrvOMSParam/SRV_LINE_NUMBER"/>
													</attribute>
												</xsl:if>
												<xsl:if test="SrvOMSParam/SRV_AUTH_METHOD!=''">
													<attribute name="authorizationMethod">
														<xsl:value-of select="SrvOMSParam/SRV_AUTH_METHOD"/>
													</attribute>
												</xsl:if>
												<!--<xsl:if test="CFFS_ID='cfs_internet' and SrvOMSParam/SRV_NO_LIMIT_SPEED !='' ">
											<attribute name="internetSpeed">max</attribute>
										</xsl:if>-->
												<!--	временно отключено-->
											</orderItemAttributes>
										</xsl:if>
										<!--<xsl:if test="SrvOMSParam/SRV_SLTU_RESERVE_NUM!=''">
											<orderItemParties>
												<orderParty>
													<partyRole>RESERVATION</partyRole>
													<partyId>
														<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE"/>
													</partyId>
													<partyAttributes>
														<attribute name="reservationId">
															<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE"/>
														</attribute>
														<attribute name="reservationNumber">
															<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE_NUM"/>
														</attribute>
													</partyAttributes>
												</orderParty>
											</orderItemParties>
										</xsl:if> -->
										<orderItemResult>
											<!--<orderItemResultCode>0</orderItemResultCode>-->
											<orderItemResultCode>
												<xsl:if test="/CRMTaskStatusUpdate/CancelReason!=''">
													<xsl:value-of select="/CRMTaskStatusUpdate/CancelReason"/>
												</xsl:if>
												<xsl:if test="/CRMTaskStatusUpdate/CancelReason=''">0</xsl:if>
											</orderItemResultCode>
											<xsl:if test="/CRMTaskStatusUpdate/CancelReason!='' and orderItemResultText and orderItemResultText!='' ">
												<orderItemResultText>
													<xsl:value-of select="orderItemResultText"/>
												</orderItemResultText>
											</xsl:if>
										</orderItemResult>
									</orderItem>
								</xsl:for-each>
							</xsl:for-each>
							<!-- CRMRequestTaskList -->
						</orderItems>
					</xsl:if>
				</xsl:for-each>
				<!--CRMTaskStatusUpdate -->
			</order>
		</tns:orderStatusNotification>
	</xsl:template>
</xsl:stylesheet>
