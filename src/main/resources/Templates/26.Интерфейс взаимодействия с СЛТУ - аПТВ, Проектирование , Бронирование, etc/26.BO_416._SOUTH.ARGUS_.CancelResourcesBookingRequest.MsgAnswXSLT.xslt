<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
  		<xsl:for-each select="cancelResourcesBookingResponse">
   <Confirmation>
   <xsl:choose>
<xsl:when test="orderResult/orderResultCode!=''">

       <ResultCode><xsl:value-of select="orderResult/orderResultCode"/></ResultCode>
    <Message><xsl:value-of select="orderResult/orderResultText"/></Message>
    <Detail>
           <ResultCode><xsl:value-of select="orderResult/orderResultCode"/></ResultCode>
    <Message><xsl:value-of select="orderResult/orderResultText"/></Message>
    </Detail>
</xsl:when>    
  <xsl:otherwise>
  <ResultCode>-1020304</ResultCode>
    <Message>Пришло пустое сообщение о сервисах</Message>
  </xsl:otherwise>
 </xsl:choose>
     <Next>RESOUT</Next>
   </Confirmation>
  </xsl:for-each> <!--  orderResult -->
  <xsl:for-each select="Fault">
			<xsl:choose>
				<xsl:when test="ResultCode > 0">
					<Result>
						<Cod>
							<xsl:value-of select="ResultCode"/>
						</Cod>
						<Text>
							<xsl:value-of select="Message"/>
						</Text>
						<Next>RESOUT</Next>
					</Result>
				</xsl:when>
				<xsl:otherwise>
					<Result>
						<Cod>6666</Cod>
						<Text>
							<xsl:copy-of select="/Fault"/>
						</Text>
						<Next>RESOUT</Next>
					</Result>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>