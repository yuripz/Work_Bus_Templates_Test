<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:urn="urn:DefaultNamespace">
	<xsl:template match="/" priority="1">
		<urn:DOACTION>
			<xsl:for-each select="submitOrderHermesRequest">
				<ACTIONNAME>SubmitOrderHermes</ACTIONNAME>
				<SYSTEMID>Hermes</SYSTEMID>
				<DATASET xsi:type="urn:DATASETARRAY">
					<FIELD xsi:type="urn:ArrayOfDATASETFIELD" soapenc:arrayType="urn:DATASETFIELD[]">
						<item>
							<FIELDNAME>orderItemAction</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="CRMRequestStatus"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldHrmsSYSOrderNum</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="OrderOMSId"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldHrmsSYSOrderNum_link</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SYSOrderURL"/>
								</item>
								<!-- Ссылка на КЗ Гермес -->
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldHrmsSYSOrderComment</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="GoToCommentOrder"/>
								</item>
								<!-- Комментарий КЗ -->
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>CustomerProjectName</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SYSProjectAnalytics/CustomerProjectName"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>CustomerProjectId</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SYSProjectAnalytics/CustomerProjectId"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>NameTenderAuction</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SYSProjectAnalytics/CustomerProjectName"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldOrganizationName</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:if test="CRMCustomer/CUSTOM_NAME">
										<xsl:value-of select="CRMCustomer/CUSTOM_NAME"/>
									</xsl:if>
									<xsl:if test="not( CRMCustomer/CUSTOM_NAME )">Eric Cman</xsl:if>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldOrganizationUNID</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:if test="/submitOrderHermesRequest/CMSCustomer/CLIENT_UNID">
										<xsl:value-of select="/submitOrderHermesRequest/CMSCustomer/CLIENT_UNID"/>
									</xsl:if>
									<xsl:if test="not( /submitOrderHermesRequest/CMSCustomer/CLIENT_UNID )">0000000</xsl:if>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldSalesPersonName</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:if test="/submitOrderHermesRequest/CMSCustomer/CLIENT_NAME">
										<xsl:value-of select="/submitOrderHermesRequest/CMSCustomer/CLIENT_NAME"/>
									</xsl:if>
									<xsl:if test="not( /submitOrderHermesRequest/CMSCustomer/CLIENT_NAME )">Учетка Тестовая Универсальная</xsl:if>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldSalesPersonId</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:if test="CMSSales/SALES_UNID">
										<xsl:value-of select="CMSSales/SALES_UNID"/>
									</xsl:if>
									<xsl:if test="not( CMSSales/SALES_UNID )">User T Universal/tst/RU</xsl:if>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldSalesChannelCode</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="/submitOrderHermesRequest/hermesOMSParam/CRMChannelID"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint2AddressGlobalID</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SYSOrderServicesAddr/GID"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldServiceType</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="CRMRequestIdList/CRMRequest[1]/ServiceType"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldSpeedValue</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="CRMRequestIdList/CRMRequest[1]/SrvOMSParam/SRV_CMS_ServiceSpeed"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldSpeedMeasure</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="CRMRequestIdList/CRMRequest[1]/SrvOMSParam/SRV_CMS_ServiceSpeed_SCALE"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint2LMOrgMethod</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="TechnologyItemCode"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldNetworkPath</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="NetworkPath"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldRegionalFilial</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="OrderOMSParam/CRMOriginatorLevelR12"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldConnectionType</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:if test="TVready=''">Off net</xsl:if>
									<xsl:if test="TVready!=''">On net</xsl:if>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldUE</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>RUR</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldInstallFee</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SMRCost"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldMonthlyFee</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="ProjectCost"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldOtherFee</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="OtherCost"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldEquipmentFee</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="EquipmentCost"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldEquipmentName</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="EquipmentName"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldVAT</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SYSProjectAnalytics/NDS_Tax"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint1Name</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point1Name"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint1Address</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point1Address"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint1Interface</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point1Interface"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint1Equipment</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point1Equipment"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint3Name</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point3Name"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint3Address</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point3Address"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint3Interface</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point3Interface"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint3Equipment</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point3Equipment"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldApprovalRequired</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:if test="ApprovalDetailing=''">Нет</xsl:if>
									<xsl:if test="ApprovalDetailing!=''">Да</xsl:if>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldApprovalDetailing</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="ApprovalDetailing"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldTechSolLifetime</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="TechSolLifetime"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldImplPeriod</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="ImplPeriod"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldPoint2LInchOrgMethod</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="Point2LInchOrgMethod"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldInCanalization</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="InCanalization"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldAirCable</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="AirCable"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldGroundCable</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="GroundCable"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldBuildCanalization</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="BuildCanalization"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldSpecialNotes</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="SpecialNotes"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldLMCrossing</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="LMCrossing"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>Solution</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="ProjectSolution"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>fldLMOrgLevel</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="LMOrgLevel"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>FileURL</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="RequestAttachmentList/RequestAttachment/AttachmentURL"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>FileName</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="RequestAttachmentList/RequestAttachment/AttachmentName"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>FileType</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="RequestAttachmentList/RequestAttachment/AttachmentCategory"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>FileAuthor</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="RequestAttachmentList/RequestAttachment/AttachmentAuthor"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>FileDate</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="RequestAttachmentList/RequestAttachment/AttachmentDate"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>MonthRevenue</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="CRMRequestIdList/CRMRequest[1]/SrvOMSParam/SRV_FEE_MONTHLY"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>SinglePayment</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="CRMRequestIdList/CRMRequest[1]/SrvOMSParam/SRV_FEE_INSTALL"/>
								</item>
							</FIELDVALUE>
						</item>
						<item>
							<FIELDNAME>MonthRevenueRetained</FIELDNAME>
							<FIELDVALUE xsi:type="soapenc:Array" soapenc:arrayType="xsd:string[1]">
								<item>
									<xsl:value-of select="CRMRequestIdList/CRMRequest[1]/SrvOMSParam/SRV_FEE_MONTHLY_SAVED"/>
								</item>
							</FIELDVALUE>
						</item>
					</FIELD>
				</DATASET>
			</xsl:for-each>
			<!-- submitOrderHermesRequest -->
			<DOCKEY>-</DOCKEY>
			<!--			<DOCKEY>
				<xsl:value-of select="/submitOrderHermesRequest/CRMOrderId"/>
			</DOCKEY>-->
			<!--<xsl:apply-templates select="CRMTaskStatusUpdate"/>-->
		</urn:DOACTION>
	</xsl:template>
</xsl:stylesheet>