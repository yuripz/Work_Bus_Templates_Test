<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<urn:ManageInvoiceRequest xmlns:urn="urn:ru:rt:fuip:invoicemessage">
			<xsl:for-each select="InvoiceList">
				<InvoiceList>
					<xsl:for-each select="Invoice">
						<Invoice>
							<InvoiceId>
								<xsl:value-of select="InvoiceId"/>
							</InvoiceId>
							<InvoiceNum>
								<xsl:value-of select="InvoiceNum"/>
							</InvoiceNum>
							<InvoiceDate>
								<xsl:value-of select="InvoiceDate"/>
							</InvoiceDate>
							<SysDocId>
								<xsl:value-of select="SysDocId"/>
							</SysDocId>
							<ProjectId>
								<xsl:value-of select="ProjectId"/>
							</ProjectId>
							<ObjectCode>
								<xsl:value-of select="ObjectCode"/>
							</ObjectCode>
							<ExpenditureType>
								<xsl:value-of select="ExpenditureType"/>
							</ExpenditureType>
							<AmountNoTax>
								<xsl:value-of select="AmountNoTax"/>
							</AmountNoTax>
							<AmountIncTax>
								<xsl:value-of select="AmountIncTax"/>
							</AmountIncTax>
							<OrgId>
								<xsl:value-of select="OrgId"/>
							</OrgId>
							<CycleNum>
								<xsl:value-of select="ContractStage"/>
							</CycleNum>
							<StageNum>
								<xsl:value-of select="PurchasePosition"/>
							</StageNum>
							<CycleId>
								<xsl:value-of select="CycleId"/>
							</CycleId>
							<StageId>
								<xsl:value-of select="StageId"/>
							</StageId>
							<xsl:if test="BarcodeList!=''">
								<BarcodeList>
									<xsl:for-each select="BarcodeList">
										<xsl:for-each select="Barcode">
											<Barcode>
												<BarcodeId>
													<xsl:value-of select="BarcodeId"/>
												</BarcodeId>
												<CategoryCode>
													<xsl:value-of select="CategoryCode"/>
												</CategoryCode>
											</Barcode>
										</xsl:for-each>
									</xsl:for-each>
								</BarcodeList>
							</xsl:if>
												<xsl:if test="ContractSpecificsList!=''">
						<xsl:for-each select="ContractSpecificsList">
							<ContractSpecificsList>
								<xsl:for-each select="ContractSpecifics">
									<ContractSpecifics>
										<ExtLineId>
											<xsl:value-of select="ExtLineId"/>
										</ExtLineId>
										<LineNum>
											<xsl:value-of select="LineNum"/>
										</LineNum>
										<Code>
											<xsl:value-of select="Code"/>
										</Code>
										<Cost>
											<xsl:value-of select="Cost"/>
										</Cost>
										<Count>
											<xsl:value-of select="Count"/>
										</Count>
										<Rate>
											<xsl:value-of select="Rate"/>
										</Rate>
										<LineAmount>
											<xsl:value-of select="LineAmount"/>
										</LineAmount>
										<InvProject>
											<xsl:value-of select="InvProject"/>
										</InvProject>
										<xsl:if test="Task!=''">
											<Task>
												<xsl:value-of select="Task"/>
											</Task>
										</xsl:if>
										<ExpenditureType>
											<xsl:value-of select="ExpenditureType"/>
										</ExpenditureType>
										<NewEquipment>
											<xsl:value-of select="NewEquipment"/>
										</NewEquipment>
										<ImpEquipment>
											<xsl:value-of select="ImpEquipment"/>
										</ImpEquipment>
										<isMark>
											<xsl:value-of select="isMark"/>
										</isMark>
										<VendorPosition>
											<xsl:value-of select="VendorPosition"/>
										</VendorPosition>
										<PackageUnit>
											<xsl:value-of select="PackageUnit"/>
										</PackageUnit>
										<Article>
											<xsl:value-of select="Article"/>
										</Article>
										<SpecificsReserve>
											<xsl:value-of select="SpecificsReserve"/>
										</SpecificsReserve>
										<xsl:if test="OriginCountry!=''">
											<OriginCountry>
												<xsl:value-of select="OriginCountry"/>
											</OriginCountry>
										</xsl:if>
										<xsl:if test="RegCountry!=''">
											<RegCountry>
												<xsl:value-of select="RegCountry"/>
											</RegCountry>
										</xsl:if>
                                            <LineAmountWOTax>
                                                <xsl:value-of select="LineAmountWOTax"/>
                                            </LineAmountWOTax>
                                            <Region>
                                                <xsl:value-of select="Region"/>
                                            </Region>
                                            <DistrictSettliment>
                                                <xsl:value-of select="DistrictSettliment"/>
                                            </DistrictSettliment>
										<ExtLineCode>
											<xsl:value-of select="ExtLineCode"/>
										</ExtLineCode>
									</ContractSpecifics>
								</xsl:for-each>
								<!-- ContractSpecifics -->
							</ContractSpecificsList>
						</xsl:for-each>
						<!--ContractSpecificsList -->
					</xsl:if>
							<Mode>
								<xsl:value-of select="Mode"/>
							</Mode>
						</Invoice>
					</xsl:for-each>
				</InvoiceList>
			</xsl:for-each>
		</urn:ManageInvoiceRequest>
	</xsl:template>
</xsl:stylesheet>