<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="Response!=''">
				<Confirmation>
					<ResultCode>
						<xsl:value-of select="/Response/ResultCode"/>
					</ResultCode>
					<Message>
						<xsl:value-of select="/Response/ResultText"/>
					</Message>
					<DetailList>
						<xsl:copy-of select="/Response"/>
						<xsl:for-each select="/ResponseFoundProperty">
							<xFoundProperty>
								<PropertyGlobalID>
									<xsl:value-of select="GlobalID"/>
								</PropertyGlobalID>
								<AccessRegulations>
									<xsl:value-of select="B2BData/AccessRegulations"/>
								</AccessRegulations>
								<OknType>
									<xsl:value-of select="OknType"/>
								</OknType>
								<BuildingType>
									<xsl:value-of select="BuildingType"/>
								</BuildingType>
								<xsl:copy-of select="/Response/FoundProperty/DynamicPropertyData"/>
								<xsl:for-each select="DynamicPropertyData">
									<xsl:for-each select="Property">
										<xsl:element name="{@name}">
											<xsl:value-of select="."/>
										</xsl:element>
									</xsl:for-each>
								</xsl:for-each>
								<Name>
									<xsl:value-of select="Name"/>
								</Name>
								<AltOperatorCount>
									<xsl:value-of select="AltOperatorCount"/>
								</AltOperatorCount>
								<ApartmentCount>
									<xsl:value-of select="ApartmentCount"/>
								</ApartmentCount>
								<ApartmentNumeration>
									<xsl:value-of select="ApartmentNumeration"/>
								</ApartmentNumeration>
								<B2BCount>
									<xsl:value-of select="B2BCount"/>
								</B2BCount>
								<FloorCount>
									<xsl:value-of select="FloorCount"/>
								</FloorCount>
								<SectorType>
									<xsl:value-of select="SectorType"/>
								</SectorType>
								<ResidentialType>
									<xsl:value-of select="ResidentialType"/>
								</ResidentialType>
								<RoofMaterial>
									<xsl:value-of select="RoofMaterial"/>
								</RoofMaterial>
								<AtticType>
									<xsl:value-of select="AtticType"/>
								</AtticType>
								<WallMaterial>
									<xsl:value-of select="WallMaterial"/>
								</WallMaterial>
								<CellarType>
									<xsl:value-of select="CellarType"/>
								</CellarType>
								<TechFloorType>
									<xsl:value-of select="TechFloorType"/>
								</TechFloorType>
								<RusRegisters>
									<xsl:copy-of select="RusRegisterData"/>
									<xsl:copy-of select="Operators"/>
								</RusRegisters>
								<CreateDate>
									<xsl:value-of select="CreateDate"/>
								</CreateDate>
								<UpdateDate>
									<xsl:value-of select="UpdateDate"/>
								</UpdateDate>
							</xFoundProperty>
						</xsl:for-each>
					</DetailList>
					<Next>RESOUT</Next>
				</Confirmation>
			</xsl:when>
			<xsl:when test="Fault!=''">
				<xsl:for-each select="Fault">
					<xsl:choose>
						<xsl:when test="ResultCode > 0">
							<Confirmation>
								<ResultCode>
									<xsl:value-of select="ResultCode"/>
								</ResultCode>
								<Message>
									<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
									<xsl:copy-of select="/Fault"/>
									<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
								</Message>
								<DetailList>
									<xsl:copy-of select="/Fault"/>
								</DetailList>
								<Next>RESOUT</Next>
							</Confirmation>
						</xsl:when>
						<xsl:otherwise>
							<Confirmation>
								<ResultCode>66066</ResultCode>
								<Message>
									<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
									<xsl:copy-of select="/Fault"/>
									<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
								</Message>
								<DetailList>
									<xsl:copy-of select="/Fault"/>
								</DetailList>
								<Next>RESOUT</Next>
							</Confirmation>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:for-each>
			</xsl:when>
			<xsl:otherwise>
				<Confirmation>
					<ResultCode>60606</ResultCode>
					<Message>неизвестный корневой тег, см.DetailList</Message>
					<DetailList>
						<xsl:copy-of select="/*"/>
					</DetailList>
					<Next>RESOUT</Next>
				</Confirmation>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
