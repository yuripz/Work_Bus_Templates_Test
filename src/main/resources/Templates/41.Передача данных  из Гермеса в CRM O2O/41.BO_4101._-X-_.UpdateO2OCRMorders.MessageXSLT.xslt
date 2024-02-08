<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<UpdateO2OCRMorders>
			<from>HRMS</from>
			<to>CRM B2O</to>
			<id>
				<xsl:value-of select="/UpdateO2OCRMorders/id"/>
			</id>
			<xsl:for-each select="UpdateO2OCRMorders">
				<number>
					<xsl:if test="number !='' ">
						<xsl:value-of select="number"/>
					</xsl:if>
					<xsl:if test="number ='' ">
						<xsl:value-of select="externalOrderId"/>
					</xsl:if>
				</number>
				<externalOrderId>
					<xsl:value-of select="externalOrderId"/>
				</externalOrderId>
				<xsl:if test="comment">
					<comment>
						<xsl:value-of select="comment"/>
					</comment>
				</xsl:if>

					<implementMethod>
						<xsl:value-of select="implementMethod"/>
					</implementMethod>


					<ownInfrastructureRTK>
						<xsl:value-of select="ownInfrastructureRtk"/>
					</ownInfrastructureRTK>

				
				<xsl:if test="finApproved">
					<xsl:if test="finApproved !='' ">
						<finApproved>
							<xsl:value-of select="finApproved"/>
						</finApproved>
					</xsl:if>
				</xsl:if>
				<totalExpenses>
					<xsl:value-of select="totalExpenses"/>
				</totalExpenses>
				<marginality>
					<xsl:value-of select="marginality"/>
				</marginality>
				<xsl:for-each select="areaInfoList">
					<areaInfoList>
						<xsl:for-each select="area">
							<area>
								<id>
									<xsl:value-of select="id"/>
								</id>
								<pointA>
									<xsl:for-each select="pointA">
										<addressGid>
											<xsl:value-of select="addressGid"/>
										</addressGid>
										<xsl:if test="latitude !='' and longitude !=''">
											<latitude>
												<xsl:value-of select="latitude"/>
											</latitude>
											<longitude>
												<xsl:value-of select="longitude"/>
											</longitude>
										</xsl:if>
										<xsl:if test="addressComment !='' ">
											<addressComment>
												<xsl:value-of select="addressComment"/>
											</addressComment>
										</xsl:if>
										<xsl:if test="contactInfo/contactFio !='' and contactInfo/contactPhone !=''">
											<contactInfo>
												<contactFio>
													<xsl:value-of select="contactInfo/contactFio"/>
												</contactFio>
												<contactPhone>
													<xsl:value-of select="contactInfo/contactPhone"/>
												</contactPhone>
												<xsl:if test="contactInfo/addressComment !='' ">
													<contactEmail>
														<xsl:value-of select="contactInfo/contactEmail"/>
													</contactEmail>
												</xsl:if>
											</contactInfo>
										</xsl:if>
									</xsl:for-each>
								</pointA>
								<pointB>
									<xsl:for-each select="pointB">
										<addressGid>
											<xsl:value-of select="addressGid"/>
										</addressGid>
										<xsl:if test="latitude !='' and longitude !=''">
											<latitude>
												<xsl:value-of select="latitude"/>
											</latitude>
											<longitude>
												<xsl:value-of select="longitude"/>
											</longitude>
										</xsl:if>
										<xsl:if test="addressComment !='' ">
											<addressComment>
												<xsl:value-of select="addressComment"/>
											</addressComment>
										</xsl:if>
										<xsl:if test="contactInfo/contactFio !='' and contactInfo/contactPhone !=''">
											<contactInfo>
												<contactFio>
													<xsl:value-of select="contactInfo/contactFio"/>
												</contactFio>
												<contactPhone>
													<xsl:value-of select="contactInfo/contactPhone"/>
												</contactPhone>
												<xsl:if test="contactInfo/addressComment !='' ">
													<contactEmail>
														<xsl:value-of select="contactInfo/contactEmail"/>
													</contactEmail>
												</xsl:if>
											</contactInfo>
										</xsl:if>
									</xsl:for-each>
								</pointB>
								<xsl:for-each select="pointsN">
									<pointsN>
										<xsl:for-each select="pointN">
											<pointN>
												<!--========================-->
												<addressGid>
													<xsl:value-of select="addressGid"/>
												</addressGid>
												<xsl:if test="latitude !='' and longitude !=''">
													<latitude>
														<xsl:value-of select="latitude"/>
													</latitude>
													<longitude>
														<xsl:value-of select="longitude"/>
													</longitude>
												</xsl:if>
												<xsl:if test="addressComment !='' ">
													<addressComment>
														<xsl:value-of select="addressComment"/>
													</addressComment>
												</xsl:if>
												<xsl:if test="contactInfo/contactFio !='' and contactInfo/contactPhone !=''">
													<contactInfo>
														<contactFio>
															<xsl:value-of select="contactInfo/contactFio"/>
														</contactFio>
														<contactPhone>
															<xsl:value-of select="contactInfo/contactPhone"/>
														</contactPhone>
														<xsl:if test="contactInfo/addressComment !='' ">
															<contactEmail>
																<xsl:value-of select="contactInfo/contactEmail"/>
															</contactEmail>
														</xsl:if>
													</contactInfo>
												</xsl:if>
												<nPoint>
													<xsl:value-of select="nPoint"/>
												</nPoint>
												<!--=========================-->
											</pointN>
										</xsl:for-each>
									</pointsN>
								</xsl:for-each>
								<!--pointsN-->
								<!--/UpdateO2OCRMorders/areaInfoList/area/cable-->
								<xsl:if test="cable !='0' ">
									<cable>
										<xsl:value-of select="cable"/>
									</cable>
								</xsl:if>
								<!--/UpdateO2OCRMorders/areaInfoList/area/distance-->
								<xsl:if test="distance !='0' ">
									<distance>
										<xsl:value-of select="distance"/>
									</distance>
								</xsl:if>
								<xsl:copy-of select="couplerInfoList"/>
								<!--/UpdateO2OCRMorders/areaInfoList/area/couplerInfoList-->
								<xsl:if test="
/UpdateO2OCRMorders/areaInfoList/area[1]/subOrders/subOrder[1]/subId">
									<!--<xsl:copy-of select="subOrders"/>-->
									<xsl:for-each select="subOrders">
										<subOrders>
											<xsl:for-each select="subOrder">
												<subOrder>
													<subId>
														<xsl:value-of select="subId"/>
													</subId>
													<runWay>
														<xsl:value-of select="runWay"/>
													</runWay>
													<stageSubName>
														<xsl:value-of select="stageSubName"/>
													</stageSubName>
												</subOrder>
											</xsl:for-each>
										</subOrders>
									</xsl:for-each>
								</xsl:if>
								<xsl:if test="not 
(/UpdateO2OCRMorders/areaInfoList/area[1]/subOrders/subOrder[1]/subId)">
									<subOrders/>
								</xsl:if>
								<!--/UpdateO2OCRMorders/areaInfoList/area/subOrders-->
								<xsl:for-each select="workResultList">
									<workList>
										<xsl:for-each select="workResult">
											<work>
												<workId>
													<xsl:value-of select="workId"/>
												</workId>
												<workName>
													<xsl:value-of select="workName"/>
												</workName>
												<workType>
													<xsl:value-of select="workType"/>
												</workType>
												<costItem>
													<xsl:value-of select="costItem"/>
												</costItem>
												<workMethod>
													<xsl:value-of select="workMethod"/>
												</workMethod>
												<unit>
													<xsl:value-of select="unit"/>
												</unit>
												<amount>
													<xsl:value-of select="amount"/>
												</amount>
												<costUnits>
													<xsl:value-of select="costUnits"/>
												</costUnits>
												<priceUnit>
													<xsl:value-of select="priceUnit"/>
												</priceUnit>
											</work>
										</xsl:for-each>
									</workList>
								</xsl:for-each>
								<xsl:copy-of select="dateInfo"/>
								<!--/UpdateO2OCRMorders/areaInfoList/area/dateInfo -->
								<xsl:if test="comment !='' ">
									<comment>
										<xsl:value-of select="comment"/>
									</comment>
								</xsl:if>
							</area>
						</xsl:for-each>
					</areaInfoList>
				</xsl:for-each>
				<stageOrderName>
					<xsl:value-of select="stageOrderName"/>
				</stageOrderName>
				<xsl:if test="/UpdateO2OCRMorders/attachmentInfo/attachments[1]/attachment">
					<xsl:copy-of select="attachmentInfo"/>
				</xsl:if>
			</xsl:for-each>
		</UpdateO2OCRMorders>
	</xsl:template>
</xsl:stylesheet>