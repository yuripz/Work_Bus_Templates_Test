<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:if test="Confirmation!=''">
			<xsl:for-each select="Confirmation">
				<xsl:for-each select="submitOrderResponse">
					<tns:submitOrderResponse xmlns:tns="http://oms.rt.ru/">
						<originator>HRMS</originator>
						<receiver>
							<xsl:value-of select="receiver"/>
						</receiver>
						<orderResult>
							<orderResultCode>
								<xsl:value-of select="/Confirmation/ResultCode"/>
							</orderResultCode>
							<orderResultText>
								<xsl:value-of select="/Confirmation/Message"/>
							</orderResultText>
						</orderResult>
						<xsl:if test="requestId!=''">
							<requestId>
								<xsl:value-of select="requestId"/>
							</requestId>
						</xsl:if>
						<xsl:if test="requestId=''">
							<requestId>0-0-0-0</requestId>
						</xsl:if>
						<xsl:for-each select="order">
							<order>
								<response>
									<orderId>
										<xsl:value-of select="orderId"/>
									</orderId>
									<orderOMSId>
										<xsl:value-of select="orderOMSId"/>
									</orderOMSId>
									<xsl:if test="/Confirmation/submitOrderResponse/order/orderStartDate!=''">
										<orderState>
											<xsl:value-of select="/Confirmation/submitOrderResponse/order/orderState"/>
										</orderState>
										<orderStartDate>
											<xsl:value-of select="/Confirmation/submitOrderResponse/order/orderStartDate"/>
										</orderStartDate>
									</xsl:if>
									<xsl:if test="/Confirmation/submitOrderResponse/order/orderCompletionDate!=''">
										<orderCompletionDate>
											<xsl:value-of select="/Confirmation/submitOrderResponse/order/orderCompletionDate"/>
										</orderCompletionDate>
									</xsl:if>
									<xsl:for-each select="orderParties">
										<orderParties>
											<xsl:for-each select="orderParty">
												<orderParty>
													<xsl:choose>
														<xsl:when test="partyRole='SOLUTION'">
															<partyRole>SOLUTION</partyRole>
															<partyAttributes>
																<xsl:for-each select="partyAttributes">
																	<xsl:if test="isMain='1'">
																		<attribute name="isMain">1</attribute>
																	</xsl:if>
																	<attribute name="connectionType">
																		<xsl:value-of select="connectionType"/>
																	</attribute>
																	<xsl:choose>
																		<xsl:when test="technology='RADIO'">
																			<attribute name="technology">WBA</attribute>
																		</xsl:when>
																		<xsl:otherwise>
																			<attribute name="technology">
																				<xsl:value-of select="technology"/>
																			</attribute>
																		</xsl:otherwise>
																	</xsl:choose>
																	<attribute name="capability">
																		<xsl:value-of select="capability"/>
																	</attribute>
																	<attribute name="buildingState">
																		<xsl:value-of select="buildingState"/>
																	</attribute>
																</xsl:for-each>
																<!--<xsl:if test="eq/OPPTVCDET_ID">-->
																<attribute name="equipmentList">
																	<xsl:for-each select="eqList">
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
																				<xsl:if test="EQ_NODEFUNCTIONS != '' or EXCLUSIVECOMMENT != '' or EQ_LOCATIONPREMISES != ''">
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
																	</xsl:for-each>
																</attribute>
																<!--</xsl:if>-->
															</partyAttributes>
														</xsl:when>
													</xsl:choose>
												</orderParty>
											</xsl:for-each>
											<!-- orderParty -->
										</orderParties>
									</xsl:for-each>
									<!-- orderParties -->
								</response>
							</order>
						</xsl:for-each>
					</tns:submitOrderResponse>
				</xsl:for-each>
				<!-- submitOrderResponse -->
			</xsl:for-each>
			<xsl:for-each select="Fault">
				<tns:Fault xmlns:tns="http://oms.rt.ru/">
					<ResultCode>
						<xsl:value-of select="ResultCode"/>
					</ResultCode>
					<Message>
						<xsl:value-of select="Message"/>
					</Message>
				</tns:Fault>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="Confirmation=''">
			<tns:Fault xmlns:tns="http://oms.rt.ru/">
				<ResultCode>
					<xsl:value-of select="ResultCode"/>
				</ResultCode>
				<Message>
					<xsl:value-of select="Message"/>
				</Message>
			</tns:Fault>
		</xsl:if>
		<xsl:if test="Result!=''">
			<tns:Fault xmlns:tns="http://oms.rt.ru/">
				<ResultCode>-10203</ResultCode>
				<Message>возврат из прикладного обработчика был произведен ранее, чем был сформирован ответ. Сбой синхронизации потоков
				</Message>
			</tns:Fault>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>