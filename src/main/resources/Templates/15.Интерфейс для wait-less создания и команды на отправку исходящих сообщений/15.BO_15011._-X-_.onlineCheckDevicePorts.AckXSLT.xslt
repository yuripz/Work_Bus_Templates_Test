<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
 <xsl:template match="/">
  <xsl:for-each select="Confirmation">
<!--<onlineWsSaveGeoObjectResponse>-->
	<ResultCode><xsl:value-of select="ResultCode"/></ResultCode>
	<ResultMessage><xsl:value-of select="Message"/></ResultMessage>
		<!-- <Queue_ID><xsl:value-of select="PayLoad/AppResponse"/></Queue_ID> -->
	<payload>
		<portList>
			<port>
				<groupName>String</groupName>
				<portId>String</portId>
				<portType>String</portType>
				<portInterface>String</portInterface>
				<ifName>String</ifName>
				<portName>String</portName>
				<portUsage>FREE</portUsage>
				<portAttributes>
					<attribute name="String" isChanged="false" status="AC">text</attribute>
					<attribute name="String" isChanged="false" status="CE">text</attribute>
					<attribute name="String" isChanged="false" status="AC">text</attribute>
				</portAttributes>
			</port>
			<port>
				<groupName>String</groupName>
				<portId>String</portId>
				<portType>String</portType>
				<portInterface>String</portInterface>
				<ifName>String</ifName>
				<portName>String</portName>
				<portUsage>BUSY</portUsage>
				<portAttributes>
					<attribute name="String" isChanged="false" status="CE">text</attribute>
					<attribute name="String" isChanged="false" status="AC">text</attribute>
					<attribute name="String" isChanged="false" status="CE">text</attribute>
				</portAttributes>
			</port>
			<port>
				<groupName>String</groupName>
				<portId>String</portId>
				<portType>String</portType>
				<portInterface>String</portInterface>
				<ifName>String</ifName>
				<portName>String</portName>
				<portUsage>FREE</portUsage>
				<portAttributes>
					<attribute name="String" isChanged="false" status="AC">text</attribute>
					<attribute name="String" isChanged="false" status="CE">text</attribute>
					<attribute name="String" isChanged="false" status="AC">text</attribute>
				</portAttributes>
			</port>
		</portList>
	</payload>
<!--</onlineWsSaveGeoObjectResponse>-->
  </xsl:for-each>
  <xsl:for-each select="Fault">
<!--<Result>-->
   <ResultCode><xsl:value-of select="ResultCode"/></ResultCode> 
   <ResultMessage>Fault:<xsl:value-of select="Message"/></ResultMessage> 
<!--</Result>-->
  </xsl:for-each>
 </xsl:template>
</xsl:stylesheet>