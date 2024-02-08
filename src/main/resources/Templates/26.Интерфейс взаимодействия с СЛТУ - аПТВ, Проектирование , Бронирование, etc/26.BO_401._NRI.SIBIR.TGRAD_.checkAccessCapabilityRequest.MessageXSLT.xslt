<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/" xmlns:net="http://nri.rt.ru/NetworkCapability">
		<net:checkAccessCapabilityRequest>
			<xsl:for-each select="checkAccessCapabilityRequest">
				<originator>HERMES</originator>
				<receiver>NRI.SIBIR.TGRAD</receiver>
				<payload>
					<xsl:for-each select="payload">
						<orderId>
							<xsl:value-of select="orderId"/>
						</orderId>
						<targetLocation>
							<xsl:for-each select="targetLocation">
								<xsl:if test="locationCategory!='GEO'">
									<locationId>
										<xsl:value-of select="locationId"/>
									</locationId>
									<locationCategory>STRICT</locationCategory>
									<locationRegister>
										<xsl:value-of select="locationCategory"/>
									</locationRegister>
								</xsl:if>
								<xsl:if test="locationCategory='GEO'">
									<locationCategory>GEO</locationCategory>
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
						<requiredCapacity>
							<xsl:value-of select="requiredCapacity"/>
						</requiredCapacity>
						<xsl:if test="technology[1]">
							<listTechnologies>
								<xsl:if test="technology[1]">
									<technology>
										<xsl:value-of select="technology[1]"/>
									</technology>
								</xsl:if>
								<xsl:if test="technology[2]">
									<technology>
										<xsl:value-of select="technology[2]"/>
									</technology>
								</xsl:if>
								<xsl:if test="technology[3]">
									<technology>
										<xsl:value-of select="technology[3]"/>
									</technology>
								</xsl:if>
								<xsl:if test="technology[4]">
									<technology>
										<xsl:value-of select="technology[4]"/>
									</technology>
								</xsl:if>
								<xsl:if test="technology[5]">
									<technology>
										<xsl:value-of select="technology[5]"/>
									</technology>
								</xsl:if>
								<xsl:if test="technology[6]">
									<technology>
										<xsl:value-of select="technology[6]"/>
									</technology>
								</xsl:if>
							</listTechnologies>
						</xsl:if>
						<xsl:if test="check">
							<checkList>
								<check>INSTALLATION</check><!-- АПТВ Инсталляции -->
							</checkList>
						</xsl:if>
						<checkTargetLocation>true</checkTargetLocation>
						<xsl:if test="searchRadius!=''">
							<searchRadius>
								<xsl:value-of select="searchRadius"/>
							</searchRadius>
						</xsl:if>
						<!--< range>1</range>   HE-3988 -->
						<xsl:if test="existingLines!=''"> <!--HE-7721-->
							<xsl:if test="existingLines/LineParam != '' ">
								<existingLines>
									<xsl:for-each select="existingLines">
										<line>
											<xsl:value-of select="LineParam"/>
										</line>
									</xsl:for-each>
								</existingLines>
							</xsl:if>
						</xsl:if>
					</xsl:for-each>
					<!-- payload -->
				</payload>
			</xsl:for-each>
			<!-- checkAccessCapabilityReques-->
		</net:checkAccessCapabilityRequest>
	</xsl:template>
</xsl:stylesheet>