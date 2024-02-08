<?xml version="1.0" encoding="UTF-8"?>
<!--
encoding_out=windows-1251
encoding_in=windows-1251
WebMetod=post
host=10.184.93.47
url=/csp/gts_train/GTS.espo.cls 
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
     <xsl:for-each select="DATA">
   <Confirmation>
   <xsl:choose>
<xsl:when test="FIELDS/ER!=''">
    <ResultCode><xsl:value-of select="FIELDS/ER"/></ResultCode>
    <Message>Ответ из Лиры в массиве</Message>
       <DetailList>
	<xsl:copy-of select="FIELDS"/>
       </DetailList> 
     <Next>RESOUT</Next>
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