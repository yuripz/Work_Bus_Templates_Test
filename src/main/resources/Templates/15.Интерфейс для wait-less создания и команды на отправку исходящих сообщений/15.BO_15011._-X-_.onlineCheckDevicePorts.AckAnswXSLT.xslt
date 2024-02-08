<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:for-each select="Confirmation">
			<xsl:choose>
				<xsl:when test="/Confirmation/DetailList">
					<!--<onlineWsSaveGeoObjectResponse>-->
					<ResultCode>
						<xsl:value-of select="/Confirmation/ResultCode"/>
					</ResultCode>
					<ResultMessage>
						<xsl:value-of select="/Confirmation/Message"/>
					</ResultMessage>
					<xsl:if test="/Confirmation/ResultCode= '0'">
						<!--<xsl:copy-of select="DetailList/payload"/> -->
						<xsl:for-each select="DetailList">
							<DetailList>
								<xsl:for-each select="payload">
									<payload>
										<xsl:for-each select="portList">
											<portList>
												<xsl:for-each select="port">
													<port>
														<xsl:copy-of select="groupName"/>
														<xsl:copy-of select="portId"/>
														<xsl:copy-of select="portType"/>
														<xsl:copy-of select="portInterface"/>
														<xsl:copy-of select="portName"/>
														<xsl:copy-of select="portUsage"/>
														<xsl:copy-of select="ifName"/>
														<xsl:for-each select="portAttributes">
															<portAttributes>
																<xsl:for-each select="portAttribute">
																	<xsl:element name="{@name}">
																		<xsl:value-of select="."/>
																	</xsl:element>
																</xsl:for-each>
															</portAttributes>
														</xsl:for-each>
													</port>
												</xsl:for-each>
												<!-- port -->
											</portList>
										</xsl:for-each>
										<!-- portList -->
									</payload>
								</xsl:for-each>
								<!-- payload -->
							</DetailList>
						</xsl:for-each>
						<!-- DetailList-->
					</xsl:if>
					<!--<xsl:copy-of select="DetailList/Detail"/>-->
					<!--</onlineWsSaveGeoObjectResponse>-->
				</xsl:when>
				<xsl:otherwise>
					<!--<Result>-->
					<ResultCode>-1020304</ResultCode>
					<ResultMessage>Пришло пустое сообщение из дочернего метода CheckDevicePorts (и/или проверьте наличие Confirmation/DetailList)</ResultMessage>
					<!--</Result>-->
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
		<!--  orderResult -->
		<xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<!--<Result>-->
					<ResultCode>
						<xsl:value-of select="ResultCode"/>
					</ResultCode>
					<Text>
						<xsl:value-of select="Message"/>
					</Text>
					<!--</Result>-->
				</xsl:when>
				<xsl:otherwise>
					<!--<Result>-->
					<ResultCode>6666</ResultCode>
					<ResultMessage>
						<xsl:copy-of select="/Fault"/>
					</ResultMessage>
					<!--</Result>-->
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>