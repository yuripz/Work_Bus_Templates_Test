<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Envelope">
			<xsl:for-each select="Body">
				<xsl:for-each select="submitOrderRequest">
					<xsl:variable name="originator" select="originator"/>
					<xsl:choose>
						<xsl:when test="$originator= 'CMS.KKFU' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>CMS.KKFU</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>CMS.KKFU</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>CMS.KKFU</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>CMS.KKFU</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>301</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.LIRA' ">
							<Context>
								<EventInitiator>URAL.LIRA</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>URAL.LIRA</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>301</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'COM.B2B' ">
							<Context>
								<EventInitiator>COM.B2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>COM.B2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>301</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'FSOM' ">
							<Context>
								<EventInitiator>FSOM</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>FSOM</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>301</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.CRMB2B' ">
							<xsl:choose>
								<xsl:when test="order/orderType='newPRECHECK' ">
									<Context>
										<EventInitiator>URAL.CRMB2B</EventInitiator>
										<EventKey>-1</EventKey>
										<Source>URAL.CRMB2B</Source>
										<Destination>HRMS</Destination>
										<BusOperationId>304</BusOperationId>
									</Context>
								</xsl:when>
								<xsl:otherwise>
									<xsl:if test="order/orderType='PRECHECK'">
										<Context>
											<EventInitiator>URAL.CRMB2B</EventInitiator>
											<EventKey>-1</EventKey>
											<Source>URAL.CRMB2B</Source>
											<Destination>HRMS</Destination>
											<BusOperationId>304</BusOperationId>
										</Context>
									</xsl:if>
									<xsl:if test="order/orderType!='PRECHECK'">
										<Context>
											<EventInitiator>URAL.CRMB2B</EventInitiator>
											<EventKey>-1</EventKey>
											<Source>URAL.CRMB2B</Source>
											<Destination>HRMS</Destination>
											<BusOperationId>301</BusOperationId>
										</Context>
									</xsl:if>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:when test="$originator= 'VLG.DKB2B' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>VLG.DKB2B</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>VLG.DKB2B</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>VLG.DKB2B</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>VLG.DKB2B</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>301</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'CENTER.CRM.AMDOCS' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>CENTER.CRM.AMDOCS</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>CENTER.CRM.AMDOCS</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>CENTER.CRM.AMDOCS</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>CENTER.CRM.AMDOCS</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>301</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'CRM.SOUTH.ARM' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>CRM.SOUTH.ARM</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>CRM.SOUTH.ARM</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>CRM.SOUTH.ARM</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>CRM.SOUTH.ARM</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>301</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'MSC' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>MSC</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>MSC</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>_MSC_</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>_MSC_</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'MUZ.OMS' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>MUZ.OMS</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>MUZ.OMS</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>_MUZ.OMS_</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>_MUZ.OMS_</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'LEAD.MNGT' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>LEAD.MNGT</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>LEAD.MNGT</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>_LEAD.MNGT_</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>_LEAD.MNGT_</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'CRMT2' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>CRMT2</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>CRMT2</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>_CRMT2_</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>_CRMT2_</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:when test="$originator= 'ECO_B2B' ">
							<xsl:if test="order/orderType='PRECHECK'">
								<Context>
									<EventInitiator>ECO_B2B</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>ECO_B2B</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
							<xsl:if test="order/orderType!='PRECHECK'">
								<Context>
									<EventInitiator>_ECO_B2B_</EventInitiator>
									<EventKey>-1</EventKey>
									<Source>_ECO_B2B_</Source>
									<Destination>HRMS</Destination>
									<BusOperationId>304</BusOperationId>
								</Context>
							</xsl:if>
						</xsl:when>
						<xsl:otherwise>
							<Context>
								<EventInitiator>GET.HRMS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>GET.HRMS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>301</BusOperationId>
							</Context>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<!-- submitOrderRequest -->
				<xsl:for-each select="cancelOrderRequest">
					<xsl:variable name="originator" select="originator"/>
					<xsl:choose>
						<xsl:when test="$originator= 'CMS.KKFU' ">
							<Context>
								<EventInitiator>CMS.KKFU</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CMS.KKFU</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.LIRA' ">
							<Context>
								<EventInitiator>URAL.LIRA</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>URAL.LIRA</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'VLG.DKB2B' ">
							<Context>
								<EventInitiator>VLG.DKB2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>VLG.DKB2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'CENTER.CRM.AMDOCS' ">
							<Context>
								<EventInitiator>CENTER.CRM.AMDOCS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CENTER.CRM.AMDOCS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.CRMB2B' ">
							<Context>
								<EventInitiator>URAL.CRMB2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>URAL.CRMB2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'COM.B2B' ">
							<Context>
								<EventInitiator>COM.B2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>COM.B2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'CRM.SOUTH.ARM' ">
							<Context>
								<EventInitiator>CRM.SOUTH.ARM</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CRM.SOUTH.ARM</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:otherwise>
							<Context>
								<EventInitiator>GET.HRMS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>GET.HRMS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>303</BusOperationId>
							</Context>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<!-- cancelOrderRequest -->
				<xsl:for-each select="amendOrderRequest">
					<xsl:variable name="originator" select="originator"/>
					<xsl:choose>
						<xsl:when test="$originator= 'CMS.KKFU' ">
							<Context>
								<EventInitiator>CMS.KKFU</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CMS.KKFU</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.LIRA' ">
							<Context>
								<EventInitiator>URAL.LIRA</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>URAL.LIRA</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'VLG.DKB2B' ">
							<Context>
								<EventInitiator>VLG.DKB2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>VLG.DKB2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'CENTER.CRM.AMDOCS' ">
							<Context>
								<EventInitiator>CENTER.CRM.AMDOCS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CENTER.CRM.AMDOCS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.CRMB2B' ">
							<Context>
								<EventInitiator>URAL.CRMB2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>URAL.CRMB2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'CRM.SOUTH.ARM' ">
							<Context>
								<EventInitiator>CRM.SOUTH.ARM</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CRM.SOUTH.ARM</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'COM.B2B' ">
							<Context>
								<EventInitiator>COM.B2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>COM.B2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:otherwise>
							<Context>
								<EventInitiator>GET.HRMS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>GET.HRMS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>305</BusOperationId>
							</Context>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<!-- amendOrderRequest -->
				<xsl:for-each select="queryOrderRequest">
					<xsl:variable name="originator" select="originator"/>
					<xsl:choose>
						<xsl:when test="$originator= 'VLG.DKB2B' ">
							<Context>
								<EventInitiator>VLG.DKB2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>VLG.DKB2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'CENTER.CRM.AMDOCS' ">
							<Context>
								<EventInitiator>CENTER.CRM.AMDOCS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CENTER.CRM.AMDOCS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.CRMB2B' ">
							<Context>
								<EventInitiator>URAL.CRMB2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>URAL.CRMB2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'URAL.LIRA' ">
							<Context>
								<EventInitiator>URAL.LIRA</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>URAL.LIRA</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'CRM.SOUTH.ARM' ">
							<Context>
								<EventInitiator>CRM.SOUTH.ARM</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CRM.SOUTH.ARM</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'KTP.SIB' ">
							<Context>
								<EventInitiator>KTP.SIB</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>KTP.SIB</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'SOM.NW' ">
							<Context>
								<EventInitiator>SOM.NW</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>SOM.NW</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:otherwise>
							<Context>
								<EventInitiator>GET.HRMS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>GET.HRMS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>307</BusOperationId>
							</Context>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<!-- queryOrderRequest-->
				<xsl:for-each select="SendCommentRequest">
					<xsl:variable name="originator" select="originator"/>
					<xsl:choose>
						<xsl:when test="$originator= 'CRM.SOUTH.ARM' ">
							<Context>
								<EventInitiator>CRM.SOUTH.ARM</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CRM.SOUTH.ARM</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>312</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'VLG.DKB2B' ">
							<Context>
								<EventInitiator>VLG.DKB2B</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>VLG.DKB2B</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>312</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:when test="$originator= 'CENTER.CRM.AMDOCS' ">
							<Context>
								<EventInitiator>CENTER.CRM.AMDOCS</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CENTER.CRM.AMDOCS</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>312</BusOperationId>
							</Context>
						</xsl:when>
						<xsl:otherwise>
							<Context>
								<EventInitiator>CMS.KKFU</EventInitiator>
								<EventKey>-1</EventKey>
								<Source>CMS.KKFU</Source>
								<Destination>HRMS</Destination>
								<BusOperationId>312</BusOperationId>
							</Context>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
				<!-- SendCommentRequest -->
			</xsl:for-each>
			<!-- Body -->
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
