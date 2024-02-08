<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<tns:orderStatusNotification xmlns:tns="http://oms.rt.ru/">
			<originator>HERMES</originator>
			<receiver>URAL.LIRA</receiver>
			<orderResult>
				<orderResultCode>0</orderResultCode>
				<xsl:if test="CRMTaskStatusUpdate/CRMRequestStatus!=''">
					<orderResultText>
						<xsl:value-of select="CRMTaskStatusUpdate/CRMRequestStatus"/>
					</orderResultText>
				</xsl:if>
				<xsl:if test="CRMTaskStatusUpdate/CRMRequestStatus=''">
					<orderResultText>DO UPDATE ORDER</orderResultText>
				</xsl:if>
			</orderResult>
			<xsl:if test="CRMTaskStatusUpdate/QueueId!=''">
				<requestId>
					<xsl:value-of select="CRMTaskStatusUpdate/QueueId"/>
				</requestId>
			</xsl:if>
			<!--			<xsl:if test="CRMTaskStatusUpdate/requestId!=''">
				<requestId>
					<xsl:value-of select="CRMTaskStatusUpdate/requestId"/>
				</requestId>
			</xsl:if>
			<xsl:if test="CRMTaskStatusUpdate/requestId=''">
				<requestId>0-0-0-0</requestId>
			</xsl:if>-->
			<order>
				<xsl:for-each select="CRMTaskStatusUpdate">
					<orderId>
						<!--<xsl:value-of select="SYSProjectAnalytics/CustomerProjectId"/>-->
						<xsl:value-of select="CRMOrderId"/>
					</orderId>
					<orderOMSId>
						<xsl:value-of select="OrderOMSId"/>
					</orderOMSId>
					<xsl:variable name="orderStateF" select="CRMRequestStatus"/>
					<xsl:choose>
						<xsl:when test="$orderStateF= 'CANCEL' ">
							<orderState>FAILED</orderState>
						</xsl:when>
						<xsl:when test="$orderStateF= 'FAILED' ">
							<orderState>FAILED</orderState>
						</xsl:when>
						<xsl:when test="$orderStateF= 'COMPLETE' ">
							<orderState>COMPLETED</orderState>
						</xsl:when>
						<xsl:otherwise>
							<orderState>INPROGRESS</orderState>
						</xsl:otherwise>
					</xsl:choose>
					<orderNotifications>
						<orderNotification>
							<notificationTimestamp>
								<xsl:value-of select="ChangeStatusDate"/>
							</notificationTimestamp>
							<notificationStatus>SYSOrderStageCode <xsl:value-of select="SYSOrderStageCode"/> : <xsl:value-of select="SYSOrderStage"/>
							</notificationStatus>
							<notificationText>
								<xsl:value-of select="StatusSYSUsrName"/>
								<xsl:value-of select="StatusSYSUsrEMail"/>
							</notificationText>
							<notificationAttributes>
								<attribute name="RegionalFilial" isChanged="false" status="AC">
									<xsl:value-of select="RegionalFilial"/>
								</attribute>
							</notificationAttributes>
						</orderNotification>
					</orderNotifications>
					<orderComments>
						<Comment>
							<text>
								<xsl:value-of select="GoToCommentOrder"/>
							</text>
						</Comment>
					</orderComments>
					<orderParties>
						<orderParty>
							<partyRole>KZ</partyRole>
							<partyId>
								<xsl:value-of select="OrderOMSId"/>
							</partyId>
							<partyAttributes>
								<!--								<attribute name="KZ">
									<xsl:value-of select="OrderOMSId"/>
								</attribute>-->
								<attribute name="fldHrmsCRMOrderOperation">
									<xsl:value-of select="SYSOrderStage"/>
								</attribute>
								<attribute name="reason">
									<xsl:value-of select="CancelReason"/>
									<!-- [CRMRequest][CancelReason] - наверное.-->
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
							<partyAttributes>
								<!--								<attribute name="partyId">
									<xsl:value-of select="StatusSYSUsrName"/>
								</attribute>-->
								<attribute name="email">
									<xsl:value-of select="StatusSYSUsrEMail"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>SZ</partyRole>
							<partyId>
								<xsl:value-of select="SYSProjectAnalytics/SYSProjectNum"/>
							</partyId>
							<partyAttributes>
								<!--								<attribute name="SZ">
									<xsl:value-of select="SYSProjectAnalytics/SYSProjectNum"/>
								</attribute>-->
								<attribute name="SYSBuildStage">
									<xsl:value-of select="SYSBuildStage"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<orderParty>
							<partyRole>SOLUTION</partyRole>
							<partyId>
								<xsl:value-of select="OrderOMSId"/>
							</partyId>
							<partyAttributes>
								<attribute name="fldConnectionType">
									<xsl:if test="/CRMTaskStatusUpdate/TVready=''">Off net</xsl:if>
									<xsl:if test="/CRMTaskStatusUpdate/TVready!=''">On net</xsl:if>
								</attribute>
								<xsl:choose>
									<xsl:when test="/CRMTaskStatusUpdate/NoTB!=''">
										<attribute name="fldNoTB">1</attribute>
									</xsl:when>
									<xsl:otherwise>
										<attribute name="fldNoTB">0</attribute>
									</xsl:otherwise>
								</xsl:choose>
								<attribute name="Solution">
									<xsl:value-of select="Solution"/>
								</attribute>
								<attribute name="fldPoint2LMOrgMethod">
									<xsl:value-of select="/CRMTaskStatusUpdate/Technology"/>
								</attribute>
								<attribute name="solutionLifetime">
									<xsl:value-of select="TechSolLifetime"/>
								</attribute>
								<attribute name="implementationPeriod">
									<xsl:value-of select="ImplPeriod"/>
								</attribute>
								<!--								<attribute name="fldPoint1Name">
									<xsl:value-of select="Point1Name"/>
								</attribute>
								<attribute name="fldPoint1Address">
									<xsl:value-of select="Point1Address"/>
								</attribute>
								<attribute name="fldPoint1Interface">
									<xsl:value-of select="Point1Interface"/>
								</attribute>
								<attribute name="fldPoint1Equipment">
									<xsl:value-of select="Point1Equipment"/>
								</attribute>
								<attribute name="fldPoint3Name">
									<xsl:value-of select="Point3Name"/>
								</attribute>
								<attribute name="fldPoint3Address">
									<xsl:value-of select="Point3Address"/>
								</attribute>
								<attribute name="fldPoint3Interface">
									<xsl:value-of select="Point3Interface"/>
								</attribute>
								<attribute name="fldPoint3Equipment">
									<xsl:value-of select="Point3Equipment"/>
								</attribute>-->
								<!--								<attribute name="fldPoint2LInchOrgMethod">
									<xsl:value-of select="Point2LInchOrgMethod"/>
								</attribute>-->
								<!--								<attribute name="fldLMCrossing">
									<xsl:value-of select="fldLMCrossing"/>
								</attribute>
								<attribute name="fldLMOrgLevel">
									<xsl:value-of select="fldLMOrgLevel"/>
								</attribute>
								<attribute name="fldNetworkPath">
									<xsl:value-of select="fldNetworkPath"/>
								</attribute>-->
								<!--								<attribute name="fldApprovalRequired">
									<xsl:if test="ApprovalDetailing=''">Нет</xsl:if>
									<xsl:if test="ApprovalDetailing!=''">Да</xsl:if>
								</attribute>-->
								<attribute name="approvalDetailing">
									<xsl:value-of select="ApprovalDetailing"/>
								</attribute>
								<!--								<attribute name="fldIsAddCapCosts">
									<xsl:choose>
										<xsl:when test="(SMRCost='0') and (ProjectCost='0') and (OtherCost='0') and (EquipmentCost='0.00')">0</xsl:when>
										<xsl:when test="NoTB!=''">0</xsl:when>
										<xsl:otherwise>1</xsl:otherwise>
									</xsl:choose>
								</attribute>-->
								<!-- константа -->
								<attribute name="UE">RUR</attribute>
								<!-- константа -->
								<attribute name="VAT">без НДС</attribute>
								<attribute name="MonthlyFee">
									<xsl:value-of select="ProjectCost"/>
								</attribute>
								<attribute name="InstallFee">
									<xsl:value-of select="SMRCost"/>
								</attribute>
								<attribute name="EquipmentFee">
									<xsl:value-of select="EquipmentCost"/>
								</attribute>
								<attribute name="EquipmentName">
									<xsl:value-of select="EquipmentName"/>
								</attribute>
								<attribute name="InCanalization">
									<xsl:value-of select="InCanalization"/>
								</attribute>
								<attribute name="airCable">
									<xsl:value-of select="AirCable"/>
								</attribute>
								<attribute name="groundCable">
									<xsl:value-of select="GroundCable"/>
								</attribute>
								<attribute name="NeedHole">
									<xsl:if test="BuildCanalization='0'">Нет</xsl:if>
									<xsl:if test="BuildCanalization!='0'">Да</xsl:if>
								</attribute>
								<attribute name="buildCanalization">
									<xsl:value-of select="BuildCanalization"/>
								</attribute>
								<!--								<attribute name="fldHrmsExtraPaysMethod">
									<xsl:value-of select="WorkMethod"/>
								</attribute>-->
								<!--								<attribute name="fldHrmsExtraPaysExecutor">
									<xsl:value-of select="Contractor"/>
								</attribute>-->
								<attribute name="buildingState">
									<xsl:value-of select="OrderOMSPTV/buildingState"/>
								</attribute>
								<attribute name="KKT">
									<xsl:value-of select="/CRMTaskStatusUpdate/CRMRequestIdList/CRMRequest/SrvOMSParam/SRV_EXT_CONN_SCHEME"/>
								</attribute>
												<xsl:if test="/CRMTaskStatusUpdate/onNetComplexOption='possible'">
													<attribute name="onNetComplexOption">possible
													</attribute>
												</xsl:if>
								<attribute name="specialNotes">
									<xsl:value-of select="SpecialNotes"/>
								</attribute>
							</partyAttributes>
						</orderParty>
						<!--						<orderParty>
							<partyRole>IP</partyRole>
							<partyAttributes>
								<attribute name="fldFinanceSource">
									<xsl:value-of select="SYSProjectAnalytics/FinanceSource"/>
								</attribute>
								<attribute name="InvestResult">
								Да -->
						<!-- константа -->
						<!--
								</attribute>
								<attribute name="InvestResultComment">
									<xsl:value-of select="GoToCommentOrder"/>
								</attribute>
							</partyAttributes>
						</orderParty>-->
						<!--
						<xsl:if test="RequestAttachmentList!=''">
							<orderAttachment>
								<xsl:for-each select="RequestAttachmentList">
									<Attachment>
										<xsl:for-each select="RequestAttachment">
											<xsl:if test="AttachmentBarCode!=''">
												<AttachmentBarCode>
													<xsl:value-of select="AttachmentBarCode"/>
												</AttachmentBarCode>
											</xsl:if>
											<xsl:if test="AttachmentURL!=''">
												<AttachmentURL>
													<xsl:value-of select="AttachmentURL"/>
												</AttachmentURL>
											</xsl:if>
											<xsl:if test="AttachmenCategory!=''">
												<AttachmentCategory>
													<xsl:value-of select="AttachmentCategory"/>
												</AttachmentCategory>
											</xsl:if>
											<xsl:if test="AttachmentName!=''">
												<AttachmentName>
													<xsl:value-of select="AttachmentName"/>
												</AttachmentName>
											</xsl:if>
										</xsl:for-each>
									</Attachment>
									
								</xsl:for-each>
								
							</orderAttachment>
						</xsl:if>
                       -->
					</orderParties>
					<orderItems>
						<xsl:for-each select="CRMRequestIdList">
							<xsl:for-each select="CRMRequest">
								<orderItem>
									<orderItemId>
										<xsl:value-of select="CRMRequestId"/>
									</orderItemId>
									<orderItemAction>CREATE</orderItemAction>
									<orderItemAttributes>
										<attribute name="ReservationNumber">
											<xsl:value-of select="SrvOMSParam/SRV_SLTU_RESERVE_NUM"/>
										</attribute>
										<attribute name="ListNumber">
											<xsl:value-of select="SrvOMSParam/SRV_LINE_NUMBER"/>
										</attribute>
									</orderItemAttributes>
									<orderItemResult>
										<orderItemResultCode>0</orderItemResultCode>
										<orderItemResultText>
											<xsl:value-of select="orderItemResultText"/>
										</orderItemResultText>
									</orderItemResult>
								</orderItem>
							</xsl:for-each>
						</xsl:for-each>
						<!-- CRMRequestTaskList -->
					</orderItems>
				</xsl:for-each>
				<!--CRMTaskStatusUpdate -->
			</order>
		</tns:orderStatusNotification>
	</xsl:template>
</xsl:stylesheet>