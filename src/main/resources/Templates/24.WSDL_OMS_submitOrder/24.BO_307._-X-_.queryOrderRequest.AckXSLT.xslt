<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ws="http://oms.rt.ru/">
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<xsl:for-each select="queryOrderResponse">
				<ws:queryOrderResponse>
					<originator>
						<xsl:value-of select="originator"/>
					</originator>
					<receiver>
						<xsl:value-of select="receiver"/>
					</receiver>
					<orderResult>
						<orderResultCode>
							<xsl:value-of select="orderResult/orderResultCode"/>
						</orderResultCode>
						<orderResultText>
							<xsl:value-of select="orderResult/orderResulText"/>
						</orderResultText>
					</orderResult>
					<requestId>
						<xsl:value-of select="requestId"/>
					</requestId>
					<xsl:if test="/Confirmation/ResultCode!='0'">
						<order>
							<orderId>0</orderId>
							<orderOMSId>0</orderOMSId>
							<orderState>REJECTED</orderState>
						</order>
					</xsl:if>
					<xsl:if test="/Confirmation/ResultCode='0'">
						<xsl:for-each select="order">
							<order>
								<orderId>
									<xsl:value-of select="orderId"/>
								</orderId>
								<orderOMSId>
									<xsl:value-of select="orderOMSId"/>
								</orderOMSId>
								<orderState>
									<xsl:value-of select="orderState"/>
								</orderState>
								<orderParties>
									<orderParty>
										<partyRole>KP</partyRole>
										<partyId>
											<xsl:value-of select="orderParties/orderParty/partyId"/>
										</partyId>
										<partyAttributes>
											<attribute name="Project">
												<xsl:value-of select="orderParties/orderParty/Project"/>
											</attribute>
											<attribute name="PONR">
												<xsl:value-of select="orderParties/orderParty/PONR"/>
											</attribute>
										</partyAttributes>
									</orderParty>
								</orderParties>
								<xsl:for-each select="orderItems">
									<orderItems>
										<xsl:for-each select="orderItem">
											<orderItem>
												<orderItemId>
													<xsl:value-of select="orderItemId"/>
												</orderItemId>
												<orderItemInstanceId/>
												<orderItemAttributes>
													<attribute name="ReservationNumber">
														<xsl:value-of select="orderItemAttributes/ReservationNumber"/>
													</attribute>
													<xsl:if test="orderItemAttributes/ListNumber!=''">
														<attribute name="ListNumber">
															<xsl:value-of select="orderItemAttributes/ListNumber"/>
														</attribute>
													</xsl:if>
													<xsl:if test="orderItemAttributes/ListNumber='' and /Confirmation/queryOrderResponse/originator='SOM.NW'">
														<attribute name="ListNumber">
															<xsl:value-of select="orderItemAttributes/serviceItemId"/>
														</attribute>
													</xsl:if>
													<attribute name="externalServiceId">
														<xsl:value-of select="orderItemAttributes/externalServiceId"/>
													</attribute>
													<attribute name="reservationId">
														<xsl:value-of select="orderItemAttributes/reservationId"/>
													</attribute>
													<attribute name="serviceItemId">
														<xsl:value-of select="orderItemAttributes/serviceItemId"/>
													</attribute>
													<attribute name="ldn">
														<xsl:value-of select="orderItemAttributes/ldn"/>
													</attribute>
												</orderItemAttributes>
												<orderItemResult>
													<orderItemResultCode>
														<xsl:value-of select="orderItemResult/orderItemResultCode"/>
													</orderItemResultCode>
													<orderItemResultText>
														<xsl:value-of select="orderItemResult/orderItemResultText"/>
													</orderItemResultText>
												</orderItemResult>
											</orderItem>
										</xsl:for-each>
									</orderItems>
								</xsl:for-each>
							</order>
						</xsl:for-each>
					</xsl:if>
				</ws:queryOrderResponse>
			</xsl:for-each>
		</xsl:for-each>
		<xsl:for-each select="Fault">
			<urn1:Fault xmlns:urn1="urn:ru:rt:hrms:fault">
				<ResultCode>
					<xsl:value-of select="ResultCode"/>
				</ResultCode>
				<ResultMessage>
					<xsl:value-of select="ResultMessage"/>
				</ResultMessage>
			</urn1:Fault>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>