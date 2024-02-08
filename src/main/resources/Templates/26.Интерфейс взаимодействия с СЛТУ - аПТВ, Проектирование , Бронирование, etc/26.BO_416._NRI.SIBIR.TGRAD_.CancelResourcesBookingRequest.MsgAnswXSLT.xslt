<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
  		<xsl:for-each select="CancelResourcesBookingResponse">
   <Confirmation>
   <xsl:choose>
<xsl:when test="orderResult/orderResultCode!=''">

       <ResultCode><xsl:value-of select="orderResult/orderResultCode"/></ResultCode>
    <Message><xsl:value-of select="orderResult/orderResultText"/></Message>
    <Detail>
           <ResultCode><xsl:value-of select="orderResult/orderResultCode"/></ResultCode>
    <Message><xsl:value-of select="orderResult/orderResultText"/></Message>
       <DetailList>
	<xsl:copy-of select="payload"/>
       </DetailList>
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
					<Confirmation>
						<ResultCode>
							<xsl:value-of select="ResultCode"/>
						</ResultCode>
						<Message>
							<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
							<xsl:copy-of select="/Fault"/>
							<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
						</Message>
						<Next>RESOUT</Next>
					</Confirmation>
				</xsl:when>
				<xsl:otherwise>
					<Confirmation>
						<ResultCode>6666</ResultCode>
						<Message>
							<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
							<xsl:copy-of select="/Fault"/>
							<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
						</Message>
						<Next>RESOUT</Next>
					</Confirmation>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>

	</xsl:template>
</xsl:stylesheet>