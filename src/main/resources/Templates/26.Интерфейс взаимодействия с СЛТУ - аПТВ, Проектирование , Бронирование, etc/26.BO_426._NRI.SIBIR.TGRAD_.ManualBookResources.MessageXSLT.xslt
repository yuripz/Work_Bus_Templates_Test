<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:proj="http://nri.rt.ru/NetworkDevelopment">
		<proj:manualBookResourcesRequest>
			<xsl:for-each select="manualBookResourcesRequest">
				<originator>HERMES</originator>
				<receiver>
					<xsl:value-of select="receiver"/>
				</receiver>
				<payload>
					<xsl:for-each select="payload">
						<orderId>
							<xsl:value-of select="orderId"/>
						</orderId>
						<targetLocation>
							<xsl:for-each select="targetLocation">
								<xsl:if test="locationCategory='GID'">
									<locationId>
										<xsl:value-of select="locationId"/>
									</locationId>
									<locationCategory>STRICT</locationCategory>
									<locationRegister>GID</locationRegister>
								</xsl:if>
								<xsl:if test="locationCategory!='GID'">
									<locationRegister>GEO</locationRegister>
									<locationAttributes>
										<xsl:for-each select="locationAttributes">
											<attribute name="Latitude" status="AC" isChanged="false">
												<xsl:value-of select="Latitude"/>
											</attribute>
											<attribute name="Longitude" status="AC" isChanged="false">
												<xsl:value-of select="Longitude"/>
											</attribute>
											<xsl:if test="room!=''">
												<attribute name="room" status="AC" isChanged="false">
													<xsl:value-of select="room"/>
												</attribute>
											</xsl:if>
										</xsl:for-each>
										<!-- locationAttributesn-->
									</locationAttributes>
								</xsl:if>
							</xsl:for-each>
							<!-- targetLocation-->
						</targetLocation>
						<xsl:for-each select="client">
							<client>
								<partyRole>CLIENT</partyRole>
								<partyId>
									<xsl:value-of select="partyId"/>
								</partyId>
								<partyName>
									<xsl:value-of select="partyName"/>
								</partyName>
							</client>
						</xsl:for-each>
						<!-- client -->
						<xsl:for-each select="serviceList">
							<serviceList>
								<xsl:for-each select="orderItem">
									<orderItem>
										<orderItemId>
											<xsl:value-of select="orderItemId"/>
										</orderItemId>
										<orderItemAction>CREATE</orderItemAction>
										<orderItemCategory>CFS</orderItemCategory>
										<xsl:if test="orderItemParentId!=''">
											<orderItemParentId>
												<xsl:value-of select="orderItemParentId"/>
											</orderItemParentId>
										</xsl:if>
										<xsl:for-each select="orderItemSpecification">
											<orderItemSpecification>
												<catalogId>HERMES</catalogId>
												<internalSpecId>
													<xsl:value-of select="internalSpecId"/>
												</internalSpecId>
												<specName>
													<xsl:value-of select="specName"/>
												</specName>
											</orderItemSpecification>
										</xsl:for-each>
										<!-- orderItem  Specification-->
										<orderItemComments/>
										<xsl:for-each select="orderItemAttributes">
											<orderItemAttributes>
												<xsl:choose>
													<xsl:when test="portInterface!=''">
														<attribute name="portInterface">
															<xsl:value-of select="portInterface"/>
														</attribute>
													</xsl:when>
													<xsl:otherwise>
														<attribute name="portInterface">-</attribute>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="portSpeedValue!=''">
														<attribute name="portSpeedValue">
															<xsl:value-of select="portSpeedValue"/>
														</attribute>
													</xsl:when>
													<xsl:otherwise>
														<attribute name="portSpeedValue">-</attribute>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="portSpeedScale!=''">
														<attribute name="portSpeedScale">
															<xsl:value-of select="portSpeedScale"/>
														</attribute>
													</xsl:when>
													<xsl:otherwise>
														<attribute name="portSpeedScale">-</attribute>
													</xsl:otherwise>
												</xsl:choose>
												<!--	
													<attribute name="portInterface">
													<xsl:value-of select="portInterface"/>
												</attribute>
												
												<attribute name="portSpeedValue">
													<xsl:value-of select="portSpeedValue"/>
												</attribute>
												<attribute name="portSpeedScale">
													<xsl:value-of select="portSpeedScale"/>
												</attribute> -->
											</orderItemAttributes>
										</xsl:for-each>
									</orderItem>
								</xsl:for-each>
								<!-- orderItem -->
							</serviceList>
						</xsl:for-each>
						<!-- serviceList -->
						<!--<xsl:if test="externalServiceId!=''">  HE-4130 -->
						<externalServiceId>
							<xsl:value-of select="externalServiceId"/>
						</externalServiceId>
						<!--</xsl:if>-->
<!--						<equipmentId>
							<xsl:value-of select="equipmentId"/>
						</equipmentId>
						<xsl:if test="portId">
							<portId>
								<xsl:value-of select="portId"/>
							</portId>
						</xsl:if>-->
						<technology>
							<xsl:value-of select="technology"/>
						</technology>
					</xsl:for-each>
				</payload>
			</xsl:for-each>
			<!-- BookResourcesForInstallationRequest -->
		</proj:manualBookResourcesRequest>
	</xsl:template>
</xsl:stylesheet>